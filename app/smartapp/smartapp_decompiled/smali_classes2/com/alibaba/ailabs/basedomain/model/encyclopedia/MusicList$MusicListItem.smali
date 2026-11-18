.class public Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList$MusicListItem;
.super Ljava/lang/Object;
.source "MusicList.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList;
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

.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList;Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList$MusicListItem;->this$0:Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p2, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList$MusicListItem;->mOriginData:Ljava/lang/String;

    .line 113
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList$MusicListItem;->parse()V

    return-void
.end method

.method private parse()V
    .locals 3

    .line 149
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList$MusicListItem;->mOriginData:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "id"

    .line 150
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList$MusicListItem;->mId:Ljava/lang/String;

    const-string v1, "name"

    .line 151
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList$MusicListItem;->mName:Ljava/lang/String;

    const-string v1, "source"

    .line 152
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList$MusicListItem;->source:Ljava/lang/String;

    const-string v1, "type"

    .line 153
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList$MusicListItem;->type:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 155
    sget-object v1, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 170
    instance-of v0, p1, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList$MusicListItem;

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList$MusicListItem;->getId()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList$MusicListItem;->getId()Ljava/lang/String;

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

    .line 117
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList$MusicListItem;->mId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList$MusicListItem;->parse()V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList$MusicListItem;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getJSON()Lorg/json/JSONObject;
    .locals 3

    const/4 v0, 0x0

    .line 137
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v0, "itemId"

    .line 138
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList$MusicListItem;->mId:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "source"

    .line 139
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList$MusicListItem;->source:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "type"

    .line 140
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList$MusicListItem;->type:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v1, v0

    .line 142
    :catch_1
    sget-object v0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList;->TAG:Ljava/lang/String;

    const-string v2, "MusicListItem getJSON err"

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v1
.end method

.method public getOriginData()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList$MusicListItem;->mOriginData:Ljava/lang/String;

    return-object v0
.end method

.method public getame()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList$MusicListItem;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList$MusicListItem;->parse()V

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList$MusicListItem;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id: "

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList$MusicListItem;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " name: "

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList$MusicListItem;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " origin data:"

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/model/encyclopedia/MusicList$MusicListItem;->mOriginData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
