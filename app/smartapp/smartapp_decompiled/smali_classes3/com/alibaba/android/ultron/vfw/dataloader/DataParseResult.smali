.class public Lcom/alibaba/android/ultron/vfw/dataloader/DataParseResult;
.super Ljava/lang/Object;
.source "DataParseResult.java"


# instance fields
.field private mModel:Lcom/alibaba/android/ultron/engine/UltronEngine$UserDataModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lcom/alibaba/android/ultron/engine/UltronEngine$UserDataModel;

    invoke-direct {v0}, Lcom/alibaba/android/ultron/engine/UltronEngine$UserDataModel;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataParseResult;->mModel:Lcom/alibaba/android/ultron/engine/UltronEngine$UserDataModel;

    return-void
.end method


# virtual methods
.method public getBizData()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataParseResult;->mModel:Lcom/alibaba/android/ultron/engine/UltronEngine$UserDataModel;

    iget-object v0, v0, Lcom/alibaba/android/ultron/engine/UltronEngine$UserDataModel;->bizData:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public getModel()Lcom/alibaba/android/ultron/engine/UltronEngine$UserDataModel;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataParseResult;->mModel:Lcom/alibaba/android/ultron/engine/UltronEngine$UserDataModel;

    return-object v0
.end method

.method public getUserData()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataParseResult;->mModel:Lcom/alibaba/android/ultron/engine/UltronEngine$UserDataModel;

    iget-object v0, v0, Lcom/alibaba/android/ultron/engine/UltronEngine$UserDataModel;->userData:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public setBizData(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataParseResult;->mModel:Lcom/alibaba/android/ultron/engine/UltronEngine$UserDataModel;

    iput-object p1, v0, Lcom/alibaba/android/ultron/engine/UltronEngine$UserDataModel;->bizData:Lcom/alibaba/fastjson/JSONObject;

    return-void
.end method

.method public setModel(Lcom/alibaba/android/ultron/engine/UltronEngine$UserDataModel;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataParseResult;->mModel:Lcom/alibaba/android/ultron/engine/UltronEngine$UserDataModel;

    return-void
.end method

.method public setUserData(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/dataloader/DataParseResult;->mModel:Lcom/alibaba/android/ultron/engine/UltronEngine$UserDataModel;

    iput-object p1, v0, Lcom/alibaba/android/ultron/engine/UltronEngine$UserDataModel;->userData:Lcom/alibaba/fastjson/JSONObject;

    return-void
.end method
