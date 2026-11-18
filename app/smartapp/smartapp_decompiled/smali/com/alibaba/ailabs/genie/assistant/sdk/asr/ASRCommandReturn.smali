.class public Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;
.super Ljava/lang/Object;
.source "ASRCommandReturn.java"


# instance fields
.field public mErrorCode:Ljava/lang/String;

.field public mErrorMessage:Ljava/lang/String;

.field public mForceClose:Z

.field public mIsHandled:Z

.field public mMention:Ljava/lang/String;

.field public mOpenFarMic:Z

.field public mSpokenMessage:Ljava/lang/String;

.field public mSuccessMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 28
    invoke-direct/range {v0 .. v7}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 34
    invoke-direct/range {v0 .. v7}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;-><init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mIsHandled:Z

    .line 41
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mErrorCode:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mErrorMessage:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mMention:Ljava/lang/String;

    .line 44
    iput-object p5, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mSuccessMessage:Ljava/lang/String;

    .line 45
    iput-object p6, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mSpokenMessage:Ljava/lang/String;

    .line 46
    iput-boolean p7, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mOpenFarMic:Z

    return-void
.end method


# virtual methods
.method public getReturn()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 51
    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mIsHandled:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "handled"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mOpenFarMic:Z

    if-eqz v1, :cond_0

    .line 54
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "openFarMic"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :cond_0
    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mForceClose:Z

    if-eqz v1, :cond_1

    .line 58
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "forceClose"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :cond_1
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mErrorCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 62
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mErrorCode:Ljava/lang/String;

    const-string v2, "errorCode"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_2
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mErrorMessage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 64
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mErrorMessage:Ljava/lang/String;

    const-string v2, "errorMessage"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_3
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mMention:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 66
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mMention:Ljava/lang/String;

    const-string v2, "mention"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_4
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mSuccessMessage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 68
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mSuccessMessage:Ljava/lang/String;

    const-string/jumbo v2, "successMessage"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_5
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mSpokenMessage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 70
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mSpokenMessage:Ljava/lang/String;

    const-string/jumbo v2, "spokenMessage"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v0
.end method

.method public getReturnEx()Ljava/lang/String;
    .locals 3

    .line 76
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 78
    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mIsHandled:Z

    if-eqz v1, :cond_0

    const-string v1, "handled"

    .line 79
    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mIsHandled:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 82
    :cond_0
    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mOpenFarMic:Z

    if-eqz v1, :cond_1

    const-string v1, "openFarMic"

    .line 83
    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mOpenFarMic:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 86
    :cond_1
    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mForceClose:Z

    if-eqz v1, :cond_2

    const-string v1, "forceClose"

    .line 87
    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mForceClose:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 90
    :cond_2
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mErrorCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "errorCode"

    .line 91
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mErrorCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    :cond_3
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mErrorMessage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "errorMessage"

    .line 93
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    :cond_4
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mMention:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "mention"

    .line 95
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mMention:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    :cond_5
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mSuccessMessage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string/jumbo v1, "successMessage"

    .line 97
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mSuccessMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    :cond_6
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mSpokenMessage:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string/jumbo v1, "spokenMessage"

    .line 99
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mSpokenMessage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 101
    :cond_7
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method
