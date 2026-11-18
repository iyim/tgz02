.class public Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/AudioLink;
.super Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;
.source "AudioLink.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AudioLink"


# instance fields
.field private mMusicList:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList;

.field private originJson:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "AudioLink"

    .line 22
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;-><init>(Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/AudioLink;->originJson:Ljava/lang/String;

    .line 24
    iget-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/AudioLink;->originJson:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/AudioLink;->mMusicList:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList;

    if-nez v1, :cond_0

    .line 26
    :try_start_0
    new-instance v1, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/AudioLink;->mMusicList:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "Parse Exception"

    .line 28
    invoke-static {v0, v1, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/AudioLink;->mMusicList:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/AudioLink;->mMusicList:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/content/Context;)V
    .locals 6

    const-string v0, "AudioLink"

    .line 47
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/AudioLink;->mMusicList:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList;->getSwapedJsonList(Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList$MusicListItem;)Lorg/json/JSONArray;

    move-result-object v1

    .line 48
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, ""

    :try_start_0
    const-string v4, "type"

    const-string v5, "raw"

    .line 51
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "rawList"

    .line 52
    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v1, "utf-8"

    .line 54
    invoke-static {v3, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jumpToMusicOrVideo music: object json:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "genie://com.alibaba.ailabs.genie.musicplayer?cmd=start&data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 57
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 58
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No activity to handle this intent, jsonString:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
