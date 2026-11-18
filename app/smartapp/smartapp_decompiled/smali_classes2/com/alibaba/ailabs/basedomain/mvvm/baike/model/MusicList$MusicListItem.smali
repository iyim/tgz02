.class public Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList$MusicListItem;
.super Ljava/lang/Object;
.source "MusicList.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MusicListItem"
.end annotation


# instance fields
.field private mId:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mOriginData:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList;Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList$MusicListItem;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList$MusicListItem;->mOriginData:Ljava/lang/String;

    .line 103
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList$MusicListItem;->parse()V

    return-void
.end method

.method private parse()V
    .locals 3

    .line 139
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList$MusicListItem;->mOriginData:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "id"

    .line 140
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList$MusicListItem;->mId:Ljava/lang/String;

    const-string v1, "name"

    .line 141
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList$MusicListItem;->mName:Ljava/lang/String;

    const-string v1, "source"

    .line 142
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList$MusicListItem;->source:Ljava/lang/String;

    const-string v1, "type"

    .line 143
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList$MusicListItem;->type:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 145
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList$MusicListItem;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList;

    iget-object v1, v1, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 160
    instance-of v0, p1, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList$MusicListItem;

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList$MusicListItem;->getId()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList$MusicListItem;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList$MusicListItem;->mId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList$MusicListItem;->parse()V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList$MusicListItem;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getJSON()Lorg/json/JSONObject;
    .locals 3

    const/4 v0, 0x0

    .line 127
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v0, "itemId"

    .line 128
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList$MusicListItem;->mId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "source"

    .line 129
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList$MusicListItem;->source:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "type"

    .line 130
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList$MusicListItem;->type:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v1, v0

    .line 132
    :catch_1
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList$MusicListItem;->this$0:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList;

    iget-object v0, v0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList;->TAG:Ljava/lang/String;

    const-string v2, "MusicListItem getJSON err"

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v1
.end method

.method public getOriginData()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList$MusicListItem;->mOriginData:Ljava/lang/String;

    return-object v0
.end method

.method public getame()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList$MusicListItem;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList$MusicListItem;->parse()V

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList$MusicListItem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id: "

    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList$MusicListItem;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " name: "

    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList$MusicListItem;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " origin data:"

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList$MusicListItem;->mOriginData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
