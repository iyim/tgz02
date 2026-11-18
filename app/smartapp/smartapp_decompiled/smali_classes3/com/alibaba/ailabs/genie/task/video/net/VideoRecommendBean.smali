.class public Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;
.super Ljava/lang/Object;
.source "VideoRecommendBean.java"


# instance fields
.field private authorName:Ljava/lang/String;

.field private category:Ljava/lang/String;

.field private clipImg:Ljava/lang/String;

.field private coverVertical:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private floatImg:Ljava/lang/String;

.field private isCharge:Ljava/lang/String;

.field private oupgc_type:Ljava/lang/String;

.field private parentShowId:Ljava/lang/String;

.field private parentTitle:Ljava/lang/String;

.field private rating:D

.field private rawId:Ljava/lang/String;

.field private releaseYear:Ljava/lang/String;

.field private score:D

.field private serializedId:Ljava/lang/String;

.field private stageImg:Ljava/lang/String;

.field private stageImg1:Ljava/lang/String;

.field private stageImg2:Ljava/lang/String;

.field private tag:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private uri:Ljava/lang/String;

.field private videoId:Ljava/lang/String;

.field private videoImg:Ljava/lang/String;

.field private videoSource:Ljava/lang/String;

.field private videoType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static arrayTestBeanFromData(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;",
            ">;"
        }
    .end annotation

    .line 273
    new-instance v0, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean$1;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean$1;-><init>()V

    .line 274
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 276
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p0, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getAuthorName()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->authorName:Ljava/lang/String;

    return-object v0
.end method

.method public getCategory()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->category:Ljava/lang/String;

    return-object v0
.end method

.method public getClipImg()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->clipImg:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverVertical()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->coverVertical:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFloatImg()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->floatImg:Ljava/lang/String;

    return-object v0
.end method

.method public getIsCharge()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->isCharge:Ljava/lang/String;

    return-object v0
.end method

.method public getOupgc_type()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->oupgc_type:Ljava/lang/String;

    return-object v0
.end method

.method public getParentShowId()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->parentShowId:Ljava/lang/String;

    return-object v0
.end method

.method public getParentTitle()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->parentTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getRating()D
    .locals 2

    .line 152
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->rating:D

    return-wide v0
.end method

.method public getRawId()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->rawId:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseYear()Ljava/lang/String;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->releaseYear:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()D
    .locals 2

    .line 176
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->score:D

    return-wide v0
.end method

.method public getSerializedId()Ljava/lang/String;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->serializedId:Ljava/lang/String;

    return-object v0
.end method

.method public getStageImg()Ljava/lang/String;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->stageImg:Ljava/lang/String;

    return-object v0
.end method

.method public getStageImg1()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->stageImg1:Ljava/lang/String;

    return-object v0
.end method

.method public getStageImg2()Ljava/lang/String;
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->stageImg2:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->uri:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoId()Ljava/lang/String;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoImg()Ljava/lang/String;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->videoImg:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoSource()Ljava/lang/String;
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->videoSource:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoType()Ljava/lang/String;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->videoType:Ljava/lang/String;

    return-object v0
.end method

.method public setAuthorName(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->authorName:Ljava/lang/String;

    return-void
.end method

.method public setCategory(Ljava/lang/String;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->category:Ljava/lang/String;

    return-void
.end method

.method public setClipImg(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->clipImg:Ljava/lang/String;

    return-void
.end method

.method public setCoverVertical(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->coverVertical:Ljava/lang/String;

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->description:Ljava/lang/String;

    return-void
.end method

.method public setFloatImg(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->floatImg:Ljava/lang/String;

    return-void
.end method

.method public setIsCharge(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->isCharge:Ljava/lang/String;

    return-void
.end method

.method public setOupgc_type(Ljava/lang/String;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->oupgc_type:Ljava/lang/String;

    return-void
.end method

.method public setParentShowId(Ljava/lang/String;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->parentShowId:Ljava/lang/String;

    return-void
.end method

.method public setParentTitle(Ljava/lang/String;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->parentTitle:Ljava/lang/String;

    return-void
.end method

.method public setRating(D)V
    .locals 0

    .line 156
    iput-wide p1, p0, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->rating:D

    return-void
.end method

.method public setRawId(Ljava/lang/String;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->rawId:Ljava/lang/String;

    return-void
.end method

.method public setReleaseYear(Ljava/lang/String;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->releaseYear:Ljava/lang/String;

    return-void
.end method

.method public setScore(D)V
    .locals 0

    .line 180
    iput-wide p1, p0, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->score:D

    return-void
.end method

.method public setSerializedId(Ljava/lang/String;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->serializedId:Ljava/lang/String;

    return-void
.end method

.method public setStageImg(Ljava/lang/String;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->stageImg:Ljava/lang/String;

    return-void
.end method

.method public setStageImg1(Ljava/lang/String;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->stageImg1:Ljava/lang/String;

    return-void
.end method

.method public setStageImg2(Ljava/lang/String;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->stageImg2:Ljava/lang/String;

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->tag:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->title:Ljava/lang/String;

    return-void
.end method

.method public setUri(Ljava/lang/String;)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->uri:Ljava/lang/String;

    return-void
.end method

.method public setVideoId(Ljava/lang/String;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->videoId:Ljava/lang/String;

    return-void
.end method

.method public setVideoImg(Ljava/lang/String;)V
    .locals 0

    .line 252
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->videoImg:Ljava/lang/String;

    return-void
.end method

.method public setVideoSource(Ljava/lang/String;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->videoSource:Ljava/lang/String;

    return-void
.end method

.method public setVideoType(Ljava/lang/String;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/video/net/VideoRecommendBean;->videoType:Ljava/lang/String;

    return-void
.end method
