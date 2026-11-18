.class public Lcom/alibaba/ailabs/childmode/mtop/NetApi;
.super Ljava/lang/Object;
.source "NetApi.java"


# static fields
.field public static final FLAG_cancelKidMode:I = 0x6

.field public static final FLAG_getKidModeCode:I = 0x5

.field public static final FLAG_getKidModeInfo:I = 0x2

.field public static final FLAG_updateEyeModeInfo:I = 0x4

.field public static final FLAG_updateKidModeInfo:I = 0x3

.field public static final FLAG_updateListenModeInfo:I = 0x7

.field public static final TAG:Ljava/lang/String; = "NetApi"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static cancelKidMode(Landroid/content/Context;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V
    .locals 6

    .line 163
    new-instance v1, Lcom/alibaba/ailabs/childmode/mtop/KidModeCodeCancelRequest;

    invoke-direct {v1}, Lcom/alibaba/ailabs/childmode/mtop/KidModeCodeCancelRequest;-><init>()V

    .line 165
    invoke-static {p0}, Lcom/alibaba/ailabs/childmode/mtop/NetApi;->getAuthInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/alibaba/ailabs/childmode/mtop/KidModeCodeCancelRequest;->setAuthInfo(Ljava/lang/String;)V

    .line 167
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object v0

    const-class v2, Lcom/alibaba/ailabs/childmode/mtop/KidModeCodeCancelResponse;

    .line 168
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v4, 0x6

    move-object v3, p1

    .line 167
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V

    return-void
.end method

.method public static getAuthInfo(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 28
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 29
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getUserID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 31
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getMtopToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v3, "userId"

    .line 32
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "uuid"

    .line 33
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "token"

    .line 34
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 37
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getKidModeCode(Landroid/content/Context;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V
    .locals 6

    .line 154
    new-instance v1, Lcom/alibaba/ailabs/childmode/mtop/KidModeCodeGetRequest;

    invoke-direct {v1}, Lcom/alibaba/ailabs/childmode/mtop/KidModeCodeGetRequest;-><init>()V

    .line 156
    invoke-static {p0}, Lcom/alibaba/ailabs/childmode/mtop/NetApi;->getAuthInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/alibaba/ailabs/childmode/mtop/KidModeCodeGetRequest;->setAuthInfo(Ljava/lang/String;)V

    .line 158
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object v0

    const-class v2, Lcom/alibaba/ailabs/childmode/mtop/KidModeCodeGetResponse;

    .line 159
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v4, 0x5

    move-object v3, p1

    .line 158
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V

    return-void
.end method

.method public static getKidModeInfo(Landroid/content/Context;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V
    .locals 6

    .line 105
    new-instance v1, Lcom/alibaba/ailabs/childmode/mtop/KidModeGetRequest;

    invoke-direct {v1}, Lcom/alibaba/ailabs/childmode/mtop/KidModeGetRequest;-><init>()V

    .line 106
    invoke-static {p0}, Lcom/alibaba/ailabs/childmode/mtop/NetApi;->getAuthInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getKidModeInfo authInfo:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NetApi"

    invoke-static {v2, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {v1, p0}, Lcom/alibaba/ailabs/childmode/mtop/KidModeGetRequest;->setAuthInfo(Ljava/lang/String;)V

    .line 109
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object v0

    const-class v2, Lcom/alibaba/ailabs/childmode/mtop/KidModeGetResponse;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v4, 0x2

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V

    return-void
.end method

.method public static updateEyeModeInfo(Landroid/content/Context;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ZI)V
    .locals 6

    .line 114
    new-instance v1, Lcom/alibaba/ailabs/childmode/mtop/EyeModeUpdateRequest;

    invoke-direct {v1}, Lcom/alibaba/ailabs/childmode/mtop/EyeModeUpdateRequest;-><init>()V

    .line 116
    invoke-static {p0}, Lcom/alibaba/ailabs/childmode/mtop/NetApi;->getAuthInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/alibaba/ailabs/childmode/mtop/EyeModeUpdateRequest;->setAuthInfo(Ljava/lang/String;)V

    .line 119
    :try_start_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "enable"

    .line 120
    invoke-virtual {p0, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 122
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/alibaba/ailabs/childmode/mtop/EyeModeUpdateRequest;->setEyeProtectionModeDTO(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 125
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 128
    :goto_0
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object v0

    const-class v2, Lcom/alibaba/ailabs/childmode/mtop/EyeModeUpdateResponse;

    const/4 v4, 0x4

    .line 129
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v3, p1

    .line 128
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V

    return-void
.end method

.method public static updateKidModeInfo(Landroid/content/Context;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/String;ZIIIIILjava/lang/Object;)V
    .locals 8

    .line 57
    :try_start_0
    invoke-static {p5}, Lcom/alibaba/ailabs/childmode/common/CommUtils;->format24Hour(I)Ljava/lang/String;

    move-result-object v6

    .line 58
    invoke-static {p6}, Lcom/alibaba/ailabs/childmode/common/CommUtils;->format24Hour(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, p0

    move-object v2, p3

    move v3, p4

    move v4, p7

    move/from16 v5, p8

    .line 79
    invoke-static/range {v1 .. v7}, Lcom/alibaba/ailabs/childmode/mtop/NetApi;->updateToServer(Landroid/content/Context;Ljava/lang/String;ZIILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static updateListenModeInfo(Landroid/content/Context;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ZI)V
    .locals 6

    .line 133
    new-instance v1, Lcom/alibaba/ailabs/childmode/mtop/ListenModeUpdateRequest;

    invoke-direct {v1}, Lcom/alibaba/ailabs/childmode/mtop/ListenModeUpdateRequest;-><init>()V

    .line 135
    invoke-static {p0}, Lcom/alibaba/ailabs/childmode/mtop/NetApi;->getAuthInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateListenModeInfo authInfo:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "NetApi"

    invoke-static {v2, v0}, Lcom/alibaba/ailabs/genie/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-virtual {v1, p0}, Lcom/alibaba/ailabs/childmode/mtop/ListenModeUpdateRequest;->setAuthInfo(Ljava/lang/String;)V

    :try_start_0
    const-string p0, "listenMode"

    .line 141
    invoke-virtual {v1, p0}, Lcom/alibaba/ailabs/childmode/mtop/ListenModeUpdateRequest;->setKey(Ljava/lang/String;)V

    .line 142
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "enable"

    .line 143
    invoke-virtual {p0, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 144
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/alibaba/ailabs/childmode/mtop/ListenModeUpdateRequest;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 146
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 149
    :goto_0
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object v0

    const-class v2, Lcom/alibaba/ailabs/childmode/mtop/ListenModeUpdateResponse;

    const/4 v4, 0x7

    .line 150
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v3, p1

    .line 149
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V

    return-void
.end method

.method public static updateToServer(Landroid/content/Context;Ljava/lang/String;ZIILjava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 88
    new-instance v8, Lcom/alibaba/ailabs/childmode/mtop/NetApi$1;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/ailabs/childmode/mtop/NetApi$1;-><init>(Landroid/content/Context;Ljava/lang/String;ZIILjava/lang/String;Ljava/lang/String;)V

    invoke-static {v8}, Lcom/alibaba/ailabs/genie/taskpool/GenieThreadManager;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
