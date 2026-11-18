.class public Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;
.super Ljava/lang/Object;
.source "EncyclopediaData.java"


# instance fields
.field public final TAG:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private imageCount:I

.field private isFallback:Ljava/lang/Boolean;

.field private linkItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;",
            ">;"
        }
    .end annotation
.end field

.field private mImageUrlList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMusicList:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList;

.field private mOriginJson:Ljava/lang/String;

.field private mPerson:Ljava/lang/String;

.field private mTemplate:Ljava/lang/String;

.field private mVideoList:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList;

.field private sessionId:I

.field private subtitle:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->TAG:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->mImageUrlList:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->linkItems:Ljava/util/ArrayList;

    .line 41
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->mOriginJson:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateViewModel()Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/UniversalBaikeViewModel;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getImageUrlList()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getImageUrlList imageUrlListStr3:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->mOriginJson:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->mOriginJson:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->mOriginJson:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->mImageUrlList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->mOriginJson:Ljava/lang/String;

    const-string v1, "images"

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getImageUrlList imageUrlListStr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 160
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 161
    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->mImageUrlList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/json/JSONObject;

    const-string v4, "url"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .line 164
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->TAG:Ljava/lang/String;

    const-string v2, "Parse Exception"

    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->mImageUrlList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMusicList()Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList;
    .locals 3

    .line 218
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->mOriginJson:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->mMusicList:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList;

    if-nez v1, :cond_0

    .line 220
    :try_start_0
    new-instance v1, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList;

    const-string v2, "audios"

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->mMusicList:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 222
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->TAG:Ljava/lang/String;

    const-string v2, "Parse Exception"

    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 225
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->mMusicList:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList;

    return-object v0
.end method

.method public getMusicName(I)Ljava/lang/String;
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->mOriginJson:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->mMusicList:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList;

    if-nez v1, :cond_0

    .line 206
    :try_start_0
    new-instance v1, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList;

    const-string v2, "audios"

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->mMusicList:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 208
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->TAG:Ljava/lang/String;

    const-string v2, "Parse Exception"

    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->mMusicList:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList;->get(I)Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList$MusicListItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->mMusicList:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList;->get(I)Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList$MusicListItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList$MusicListItem;->getame()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getNextLinkItemData(Lcom/alibaba/ailabs/basedomain/mvvm/baike/viewmodel/LinkItemData;)Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->linkItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->linkItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 63
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->linkItems:Ljava/util/ArrayList;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/Link;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPerson()Ljava/lang/String;
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->mOriginJson:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->mPerson:Ljava/lang/String;

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "person"

    .line 102
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->mPerson:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 104
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->TAG:Ljava/lang/String;

    const-string v2, "Parse Exception"

    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->mPerson:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonPhotoUrl()Ljava/lang/String;
    .locals 2

    .line 176
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->getImageUrlList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 179
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSessionId()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->sessionId:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->mOriginJson:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->subtitle:Ljava/lang/String;

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "subtitle"

    .line 72
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->subtitle:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 74
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->TAG:Ljava/lang/String;

    const-string v2, "Parse Exception"

    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 77
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->subtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplate()Ljava/lang/String;
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->mOriginJson:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->mTemplate:Ljava/lang/String;

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "template"

    .line 91
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->mTemplate:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 93
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->TAG:Ljava/lang/String;

    const-string v2, "Parse Exception"

    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->mTemplate:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->mOriginJson:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->description:Ljava/lang/String;

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "text"

    .line 137
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->description:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 139
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->TAG:Ljava/lang/String;

    const-string v2, "Parse Exception"

    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->mOriginJson:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->title:Ljava/lang/String;

    if-nez v1, :cond_0

    :try_start_0
    const-string v1, "title"

    .line 125
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->title:Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Title:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 128
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->TAG:Ljava/lang/String;

    const-string v2, "Parse Exception"

    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getVid()Ljava/lang/String;
    .locals 3

    .line 267
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->mOriginJson:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->mVideoList:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList;

    if-nez v1, :cond_0

    .line 269
    :try_start_0
    new-instance v1, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList;

    const-string v2, "videos"

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->mVideoList:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 271
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->TAG:Ljava/lang/String;

    const-string v2, "Parse Exception"

    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 274
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->mVideoList:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList;->get(I)Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList$VideoListItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->mVideoList:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList;->get(I)Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList$VideoListItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList$VideoListItem;->getVideoVid()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVideoList()Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList;
    .locals 3

    .line 229
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->mOriginJson:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->mVideoList:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList;

    if-nez v1, :cond_0

    .line 231
    :try_start_0
    new-instance v1, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList;

    const-string v2, "videos"

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->mVideoList:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 233
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->TAG:Ljava/lang/String;

    const-string v2, "Parse Exception"

    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->mVideoList:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList;

    return-object v0
.end method

.method public getVideoName(I)Ljava/lang/String;
    .locals 3

    .line 253
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->mOriginJson:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->mVideoList:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList;

    if-nez v1, :cond_0

    .line 255
    :try_start_0
    new-instance v1, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList;

    const-string v2, "videos"

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->mVideoList:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 257
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->TAG:Ljava/lang/String;

    const-string v2, "Parse Exception"

    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 260
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->mVideoList:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList;->get(I)Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList$VideoListItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->mVideoList:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList;

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList;->get(I)Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList$VideoListItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList$VideoListItem;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getVideoUrl()Ljava/lang/String;
    .locals 3

    .line 281
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->mOriginJson:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->mVideoList:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList;

    if-nez v1, :cond_0

    .line 283
    :try_start_0
    new-instance v1, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList;

    const-string v2, "videos"

    invoke-static {v0, v2}, Lcom/alibaba/ailabs/basedomain/common/JSONUtil;->parse(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->mVideoList:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 285
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->TAG:Ljava/lang/String;

    const-string v2, "Parse Exception"

    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 288
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->mVideoList:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList;->get(I)Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList$VideoListItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 289
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->mVideoList:Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList;

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList;->get(I)Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList$VideoListItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList$VideoListItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public hasPic()Z
    .locals 1

    .line 171
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->getImageUrlList()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFallback()Z
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->mOriginJson:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->isFallback:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 113
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "isFallback"

    .line 114
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->isFallback:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 116
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->TAG:Ljava/lang/String;

    const-string v2, "Parse isFallback Exception"

    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 119
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->isFallback:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_1
    return v0
.end method

.method public setSessionId(I)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->sessionId:I

    return-void
.end method

.method public swapMusicToFirst(I)Lorg/json/JSONArray;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 296
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EncyclopediaData{mTemplate=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->getTemplate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mPerson=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->getPerson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mTitle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mText=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mImageUrlList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->getImageUrlList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMusicList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->getMusicList()Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/MusicList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mVideoList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->getVideoList()Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/VideoList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mOriginJson="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/mvvm/baike/model/EncyclopediaData;->mOriginJson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
