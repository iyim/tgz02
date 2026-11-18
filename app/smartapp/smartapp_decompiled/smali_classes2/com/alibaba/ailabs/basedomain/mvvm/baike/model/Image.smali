.class public Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;
.super Ljava/lang/Object;
.source "Image.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private height:I

.field private isGray:Z

.field mCacheGlideImageTask:Ljava/lang/Runnable;

.field private url:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;->TAG:Ljava/lang/String;

    .line 150
    new-instance v0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image$3;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image$3;-><init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;->mCacheGlideImageTask:Ljava/lang/Runnable;

    const-string v0, "url"

    .line 38
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;->url:Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;->mCacheGlideImageTask:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/alibaba/ailabs/basedomain/ui/BaseService;->postBgTask(Ljava/lang/Runnable;)V

    const-string v0, "width"

    .line 40
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parseInt(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;->width:I

    const-string v0, "height"

    .line 41
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parseInt(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;->height:I

    const-string v0, "gray"

    .line 42
    invoke-static {p1, v0}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parseBoolean(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;->isGray:Z

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;)Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;->isGray:Z

    return p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;->url:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isHighResolution()Z
    .locals 4

    .line 51
    iget v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;->width:I

    const/16 v1, 0x400

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;->height:I

    const/16 v1, 0x258

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 54
    :goto_0
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isHighResolution :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " url:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public setToView(Landroid/view/View;)V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setToView() called with: view = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 63
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/MainApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 68
    :goto_0
    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image$1;-><init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method

.method public setToViewBg(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;->setToViewBg(Landroid/view/View;Landroid/widget/ImageView;)V

    return-void
.end method

.method public setToViewBg(Landroid/view/View;Landroid/widget/ImageView;)V
    .locals 1

    const/4 v0, 0x1

    .line 97
    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;->setToViewBg(Landroid/view/View;Landroid/widget/ImageView;Z)V

    return-void
.end method

.method public setToViewBg(Landroid/view/View;Landroid/widget/ImageView;Z)V
    .locals 8

    .line 101
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setToViewBg() called with: view = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    .line 105
    invoke-static {}, Lcom/alibaba/ailabs/basedomain/MainApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    :goto_0
    move-object v6, v0

    .line 110
    invoke-static {v6}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asBitmap()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    new-instance v7, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image$2;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p3

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image$2;-><init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Image;Landroid/view/View;ZLandroid/widget/ImageView;Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    return-void
.end method
