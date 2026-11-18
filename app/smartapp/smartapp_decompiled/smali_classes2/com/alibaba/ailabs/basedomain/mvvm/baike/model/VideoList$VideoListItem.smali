.class public Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList$VideoListItem;
.super Ljava/lang/Object;
.source "VideoList.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "VideoListItem"
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field private mOriginData:Ljava/lang/String;

.field private mVid:Ljava/lang/String;

.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList;Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList$VideoListItem;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList$VideoListItem;->mOriginData:Ljava/lang/String;

    .line 61
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList$VideoListItem;->parse()V

    return-void
.end method

.method private parse()V
    .locals 3

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList$VideoListItem;->mOriginData:Ljava/lang/String;

    const-string v1, "title"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList$VideoListItem;->mName:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList$VideoListItem;->mOriginData:Ljava/lang/String;

    const-string v1, "vid"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList$VideoListItem;->mVid:Ljava/lang/String;

    .line 68
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList$VideoListItem;->mOriginData:Ljava/lang/String;

    const-string v1, "uri"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList$VideoListItem;->url:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 70
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList$VideoListItem;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList;

    iget-object v1, v1, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList;->TAG:Ljava/lang/String;

    const-string v2, "parse exception"

    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList$VideoListItem;->mName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList$VideoListItem;->parse()V

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList$VideoListItem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList$VideoListItem;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList$VideoListItem;->parse()V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList$VideoListItem;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoVid()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList$VideoListItem;->mVid:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList$VideoListItem;->parse()V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList$VideoListItem;->mVid:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoListItem{mName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList$VideoListItem;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mVid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList$VideoListItem;->mVid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mOriginData=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList$VideoListItem;->mOriginData:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
