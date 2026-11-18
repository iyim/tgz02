.class public Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;
.super Ljava/lang/Object;
.source "UTPageHitHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ut/mini/UTPageHitHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UTPageEventObject"
.end annotation


# instance fields
.field private mCacheKey:Ljava/lang/String;

.field private mIsH5Called:Z

.field private mIsPageAppearCalled:Z

.field private mIsSkipPage:Z

.field private mNextPageProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPageAppearTimestamp:J

.field private mPageName:Ljava/lang/String;

.field private mPageProperties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPageStatus:Lcom/ut/mini/UTPageStatus;

.field private mPageStatusCode:I

.field private mPageStayTimstamp:J

.field private mPageUrl:Landroid/net/Uri;

.field private mRefPage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageProperties:Ljava/util/Map;

    const-wide/16 v0, 0x0

    .line 229
    iput-wide v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageAppearTimestamp:J

    .line 230
    iput-wide v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageStayTimstamp:J

    const/4 v0, 0x0

    .line 231
    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageUrl:Landroid/net/Uri;

    .line 232
    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageName:Ljava/lang/String;

    .line 233
    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mRefPage:Ljava/lang/String;

    .line 234
    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageStatus:Lcom/ut/mini/UTPageStatus;

    const/4 v1, 0x0

    .line 235
    iput-boolean v1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mIsPageAppearCalled:Z

    .line 236
    iput-boolean v1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mIsSkipPage:Z

    .line 237
    iput-boolean v1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mIsH5Called:Z

    .line 238
    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mCacheKey:Ljava/lang/String;

    .line 239
    iput v1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageStatusCode:I

    .line 240
    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mNextPageProperties:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getCacheKey()Ljava/lang/String;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mCacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public getNextPageProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mNextPageProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getPageAppearTimestamp()J
    .locals 2

    .line 315
    iget-wide v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageAppearTimestamp:J

    return-wide v0
.end method

.method public getPageName()Ljava/lang/String;
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPageProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 307
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageProperties:Ljava/util/Map;

    return-object v0
.end method

.method public getPageStatus()Lcom/ut/mini/UTPageStatus;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageStatus:Lcom/ut/mini/UTPageStatus;

    return-object v0
.end method

.method public getPageStatusCode()I
    .locals 1

    .line 359
    iget v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageStatusCode:I

    return v0
.end method

.method public getPageStayTimstamp()J
    .locals 2

    .line 323
    iget-wide v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageStayTimstamp:J

    return-wide v0
.end method

.method public getPageUrl()Landroid/net/Uri;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public getRefPage()Ljava/lang/String;
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mRefPage:Ljava/lang/String;

    return-object v0
.end method

.method public isH5Called()Z
    .locals 1

    .line 275
    iget-boolean v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mIsH5Called:Z

    return v0
.end method

.method public isPageAppearCalled()Z
    .locals 1

    .line 295
    iget-boolean v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mIsPageAppearCalled:Z

    return v0
.end method

.method public isSkipPage()Z
    .locals 1

    .line 287
    iget-boolean v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mIsSkipPage:Z

    return v0
.end method

.method public resetPropertiesWithoutSkipFlagAndH5Flag()V
    .locals 3

    .line 259
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageProperties:Ljava/util/Map;

    const-wide/16 v0, 0x0

    .line 260
    iput-wide v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageAppearTimestamp:J

    .line 261
    iput-wide v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageStayTimstamp:J

    const/4 v0, 0x0

    .line 262
    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageUrl:Landroid/net/Uri;

    .line 263
    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageName:Ljava/lang/String;

    .line 264
    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mRefPage:Ljava/lang/String;

    .line 265
    iget-object v1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageStatus:Lcom/ut/mini/UTPageStatus;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/ut/mini/UTPageStatus;->UT_H5_IN_WebView:Lcom/ut/mini/UTPageStatus;

    if-eq v1, v2, :cond_1

    .line 266
    :cond_0
    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageStatus:Lcom/ut/mini/UTPageStatus;

    :cond_1
    const/4 v1, 0x0

    .line 268
    iput-boolean v1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mIsPageAppearCalled:Z

    .line 269
    iput-boolean v1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mIsH5Called:Z

    .line 270
    iput v1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageStatusCode:I

    .line 271
    iput-object v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mNextPageProperties:Ljava/util/Map;

    return-void
.end method

.method public setCacheKey(Ljava/lang/String;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mCacheKey:Ljava/lang/String;

    return-void
.end method

.method public setH5Called()V
    .locals 1

    const/4 v0, 0x1

    .line 279
    iput-boolean v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mIsH5Called:Z

    return-void
.end method

.method public setNextPageProperties(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 243
    iput-object p1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mNextPageProperties:Ljava/util/Map;

    return-void
.end method

.method public setPageAppearCalled()V
    .locals 1

    const/4 v0, 0x1

    .line 291
    iput-boolean v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mIsPageAppearCalled:Z

    return-void
.end method

.method public setPageAppearTimestamp(J)V
    .locals 0

    .line 319
    iput-wide p1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageAppearTimestamp:J

    return-void
.end method

.method public setPageName(Ljava/lang/String;)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageName:Ljava/lang/String;

    return-void
.end method

.method public setPageProperties(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 311
    iput-object p1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageProperties:Ljava/util/Map;

    return-void
.end method

.method public setPageStatus(Lcom/ut/mini/UTPageStatus;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageStatus:Lcom/ut/mini/UTPageStatus;

    return-void
.end method

.method public setPageStatusCode(I)V
    .locals 0

    .line 355
    iput p1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageStatusCode:I

    return-void
.end method

.method public setPageStayTimstamp(J)V
    .locals 0

    .line 327
    iput-wide p1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageStayTimstamp:J

    return-void
.end method

.method public setPageUrl(Landroid/net/Uri;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mPageUrl:Landroid/net/Uri;

    return-void
.end method

.method public setRefPage(Ljava/lang/String;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mRefPage:Ljava/lang/String;

    return-void
.end method

.method public setToSkipPage()V
    .locals 1

    const/4 v0, 0x1

    .line 283
    iput-boolean v0, p0, Lcom/ut/mini/UTPageHitHelper$UTPageEventObject;->mIsSkipPage:Z

    return-void
.end method
