BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "chat_messages" (
    "id" bigserial PRIMARY KEY,
    "senderId" bigint NOT NULL,
    "receiverId" bigint NOT NULL,
    "message" text NOT NULL,
    "type" text,
    "mediaType" text,
    "mediaUrl" text,
    "mediaSize" text,
    "replyId" bigint,
    "replyText" text,
    "replyUser" text,
    "read" boolean NOT NULL,
    "createdAt" timestamp without time zone
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "cities" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "image" text,
    "division" text,
    "state" text,
    "country" text
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "comment_reports" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint NOT NULL,
    "commentId" bigint NOT NULL,
    "reason" text NOT NULL,
    "createdAt" timestamp without time zone
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "comments" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint,
    "postId" bigint,
    "text" text NOT NULL,
    "createdAt" timestamp without time zone
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "contacts" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint NOT NULL,
    "name" text,
    "number" text NOT NULL,
    "addedAt" timestamp without time zone
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "follows" (
    "id" bigserial PRIMARY KEY,
    "followerId" bigint NOT NULL,
    "followingId" bigint NOT NULL,
    "createdAt" timestamp without time zone
);

-- Indexes
CREATE UNIQUE INDEX "follower_following_idx" ON "follows" USING btree ("followerId", "followingId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "like_comments" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint,
    "commentId" bigint,
    "createdAt" timestamp without time zone
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "likes" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint,
    "postId" bigint NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "user_post_idx" ON "likes" USING btree ("userId", "postId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "notifications" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint NOT NULL,
    "senderId" bigint,
    "notificationType" text,
    "postId" bigint,
    "commentId" bigint,
    "replyCommentId" bigint,
    "pollId" bigint,
    "message" text,
    "isRead" boolean NOT NULL,
    "isArchived" boolean NOT NULL,
    "createdAt" timestamp without time zone
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "poll_options" (
    "id" bigserial PRIMARY KEY,
    "pollId" bigint NOT NULL,
    "text" text NOT NULL,
    "order" bigint NOT NULL,
    "voteCount" bigint NOT NULL
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "poll_votes" (
    "id" bigserial PRIMARY KEY,
    "pollId" bigint NOT NULL,
    "pollOptionId" bigint NOT NULL,
    "userId" bigint NOT NULL,
    "createdAt" timestamp without time zone
);

-- Indexes
CREATE UNIQUE INDEX "poll_option_user_idx" ON "poll_votes" USING btree ("pollOptionId", "userId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "polls" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint,
    "question" text NOT NULL,
    "isMultipleChoice" boolean NOT NULL,
    "expiresAt" timestamp without time zone,
    "createdAt" timestamp without time zone
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "post_people_tagged" (
    "id" bigserial PRIMARY KEY,
    "postId" bigint NOT NULL,
    "userProfileId" bigint NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "post_user_idx" ON "post_people_tagged" USING btree ("postId", "userProfileId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "post_reports" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint NOT NULL,
    "postId" bigint NOT NULL,
    "reason" text NOT NULL,
    "createdAt" timestamp without time zone
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "post_tags" (
    "id" bigserial PRIMARY KEY,
    "postId" bigint NOT NULL,
    "tagId" bigint NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "post_tag_idx" ON "post_tags" USING btree ("postId", "tagId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "post_view_counts" (
    "id" bigserial PRIMARY KEY,
    "postId" bigint NOT NULL,
    "userId" bigint,
    "ipAddress" text,
    "viewedAt" timestamp without time zone
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "posts" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint,
    "text" text,
    "image" text,
    "location" text,
    "latitude" double precision,
    "longitude" double precision,
    "cityId" bigint,
    "description" text,
    "canReply" bigint,
    "isPublic" boolean NOT NULL,
    "likesCount" bigint NOT NULL,
    "commentsCount" bigint NOT NULL,
    "viewsCount" bigint NOT NULL,
    "retweetCount" bigint NOT NULL,
    "retweetedPostId" bigint,
    "pollId" bigint,
    "isDeleted" boolean NOT NULL,
    "isReported" boolean NOT NULL,
    "isArchived" boolean NOT NULL,
    "createdAt" timestamp without time zone,
    "updatedAt" timestamp without time zone
);

-- Indexes
CREATE INDEX "latitude_idx" ON "posts" USING btree ("latitude");
CREATE INDEX "longitude_idx" ON "posts" USING btree ("longitude");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "reply_comments" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint,
    "commentId" bigint,
    "text" text NOT NULL,
    "createdAt" timestamp without time zone
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "saved_posts" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint NOT NULL,
    "postId" bigint NOT NULL,
    "savedAt" timestamp without time zone
);

-- Indexes
CREATE UNIQUE INDEX "user_post_saved_idx" ON "saved_posts" USING btree ("userId", "postId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "stories" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint NOT NULL,
    "mediaUrl" text NOT NULL,
    "mediaType" text NOT NULL,
    "createdAt" timestamp without time zone,
    "expiresAt" timestamp without time zone,
    "latitude" text,
    "longitude" text
);

--
-- ACTION CREATE TABLE
--
CREATE TABLE "story_view_counts" (
    "id" bigserial PRIMARY KEY,
    "storyId" bigint NOT NULL,
    "viewerId" bigint NOT NULL,
    "viewedAt" timestamp without time zone
);

-- Indexes
CREATE UNIQUE INDEX "story_viewer_idx" ON "story_view_counts" USING btree ("storyId", "viewerId");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "tags" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "image" text,
    "color" text,
    "priority" bigint NOT NULL,
    "createdAt" timestamp without time zone
);

-- Indexes
CREATE UNIQUE INDEX "name_idx" ON "tags" USING btree ("name");

--
-- ACTION CREATE TABLE
--
CREATE TABLE "user_profiles" (
    "id" bigserial PRIMARY KEY,
    "userId" bigint,
    "name" text,
    "email" text,
    "phoneNumber" text,
    "image" text,
    "username" text,
    "isVerified" boolean NOT NULL
);

-- Indexes
CREATE UNIQUE INDEX "username_idx" ON "user_profiles" USING btree ("username");


--
-- MIGRATION VERSION FOR social_serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('social_serverpod', '20260128182800524', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20260128182800524', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20251208110333922-v3-0-0', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20251208110333922-v3-0-0', "timestamp" = now();


COMMIT;
