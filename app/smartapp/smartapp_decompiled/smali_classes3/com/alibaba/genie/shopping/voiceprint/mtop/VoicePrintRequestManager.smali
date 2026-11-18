.class public Lcom/alibaba/genie/shopping/voiceprint/mtop/VoicePrintRequestManager;
.super Ljava/lang/Object;
.source "VoicePrintRequestManager.java"


# static fields
.field public static final FLAG_CANCEL_SOUND_PRINT:I = 0x9

.field public static final FLAG_CLOSE_SOUND_PRINT:I = 0x8

.field public static final FLAG_CREATE_SOUND_PRINT_PAY:I = 0x5

.field public static final FLAG_DEL_SOUND_PRINT:I = 0x7

.field public static final FLAG_GET_SOUND_PAY_PRINT_CREATE_RESULT:I = 0x6

.field public static final FLAG_GET_SOUND_PRINT_CREATE_RESULT:I = 0x3

.field public static final FLAG_GET_SOUND_PRINT_GET_VERIFYID:I = 0x4

.field public static final FLAG_GET_SOUND_PRINT_LIST:I = 0x2

.field public static final FLAG_voiceprint_create:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static cancelSoundPrint(Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V
    .locals 6

    .line 257
    new-instance v1, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundprintCancelRequest;

    invoke-direct {v1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundprintCancelRequest;-><init>()V

    .line 258
    invoke-virtual {v1, p0}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundprintCancelRequest;->setAuthInfo(Ljava/lang/String;)V

    .line 259
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object v0

    const-class v2, Lcom/alibaba/ailabs/tg/mtop/response/NoModelResp;

    const/4 v5, 0x0

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V

    return-void
.end method

.method public static createSoundPrint(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V
    .locals 6

    .line 76
    new-instance v1, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintCreateRequest;

    invoke-direct {v1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintCreateRequest;-><init>()V

    .line 77
    invoke-virtual {v1, p0}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintCreateRequest;->setAuthInfo(Ljava/lang/String;)V

    .line 78
    invoke-virtual {v1, p1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintCreateRequest;->setNickName(Ljava/lang/String;)V

    .line 79
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object v0

    const-class v2, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintCreateResp;

    const/4 v5, 0x0

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V

    return-void
.end method

.method public static createSoundPrintPay(Ljava/lang/String;JLcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V
    .locals 6

    .line 184
    new-instance v1, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintCreatePayRequest;

    invoke-direct {v1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintCreatePayRequest;-><init>()V

    .line 185
    invoke-virtual {v1, p0}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintCreatePayRequest;->setAuthInfo(Ljava/lang/String;)V

    .line 186
    invoke-virtual {v1, p1, p2}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintCreatePayRequest;->setPrintId(J)V

    .line 187
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object v0

    const-class v2, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintCreateResp;

    const/4 v5, 0x0

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V

    return-void
.end method

.method public static enablePay(Ljava/lang/String;JZLcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V
    .locals 6

    .line 302
    new-instance v1, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnablePayRequest;

    invoke-direct {v1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnablePayRequest;-><init>()V

    .line 303
    invoke-virtual {v1, p0}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnablePayRequest;->setAuthInfo(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v1, p1, p2}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnablePayRequest;->setPrintId(J)V

    .line 305
    invoke-virtual {v1, p3}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnablePayRequest;->setEnable(Z)V

    .line 306
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object v0

    const-class v2, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintCreateResp;

    const/4 v5, 0x0

    move-object v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V

    return-void
.end method

.method public static enhanceVoicePrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V
    .locals 6

    .line 356
    new-instance v1, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/EnhanceSoundPrintRequest;

    invoke-direct {v1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/EnhanceSoundPrintRequest;-><init>()V

    .line 357
    invoke-virtual {v1, p0}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/EnhanceSoundPrintRequest;->setAuthInfo(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v1, p1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/EnhanceSoundPrintRequest;->setName(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v1, p2}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/EnhanceSoundPrintRequest;->setUuid(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v1, p3}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/EnhanceSoundPrintRequest;->setPosition(Ljava/lang/String;)V

    .line 361
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object v0

    const-class v2, Lcom/alibaba/ailabs/tg/mtop/response/NoModelResp;

    const/4 v5, 0x0

    move-object v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V

    return-void
.end method

.method public static getEnhanceListForOne(Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V
    .locals 6

    .line 469
    new-instance v1, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundprintGetentirelistRequest;

    invoke-direct {v1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundprintGetentirelistRequest;-><init>()V

    .line 470
    invoke-virtual {v1, p0}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundprintGetentirelistRequest;->setAuthInfo(Ljava/lang/String;)V

    .line 471
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object v0

    const-class v2, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundprintGetentirelistResponse;

    const/4 v5, 0x0

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V

    return-void
.end method

.method public static getEnhanceVoicePrintList(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V
    .locals 6

    .line 420
    new-instance v1, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundprintEnhanceGetlistRequest;

    invoke-direct {v1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundprintEnhanceGetlistRequest;-><init>()V

    .line 421
    invoke-virtual {v1, p0}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundprintEnhanceGetlistRequest;->setAuthInfo(Ljava/lang/String;)V

    .line 422
    invoke-virtual {v1, p1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundprintEnhanceGetlistRequest;->setName(Ljava/lang/String;)V

    .line 423
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object v0

    const-class v2, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundprintEnhanceGetlistResponse;

    const/4 v5, 0x0

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V

    return-void
.end method

.method public static getListSwitch(Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V
    .locals 6

    .line 437
    new-instance v1, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/ListswitchRequest;

    invoke-direct {v1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/ListswitchRequest;-><init>()V

    .line 438
    invoke-virtual {v1, p0}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/ListswitchRequest;->setAuthInfo(Ljava/lang/String;)V

    .line 439
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object v0

    const-class v2, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/ListswitchResponse;

    const/4 v5, 0x0

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V

    return-void
.end method

.method public static getPayPasswordCreateResult(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V
    .locals 6

    .line 200
    new-instance v1, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/PayPasswordGetResultRequest;

    invoke-direct {v1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/PayPasswordGetResultRequest;-><init>()V

    .line 201
    invoke-virtual {v1, p0}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/PayPasswordGetResultRequest;->setAuthInfo(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v1, p1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/PayPasswordGetResultRequest;->setVoicePrintInfoData(Ljava/lang/String;)V

    .line 203
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object v0

    const-class v2, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintCreateResp;

    const/4 v5, 0x0

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V

    return-void
.end method

.method public static getSoundPrintById(Ljava/lang/String;JLcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V
    .locals 6

    .line 319
    new-instance v1, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/GetSoundPrintRequest;

    invoke-direct {v1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/GetSoundPrintRequest;-><init>()V

    .line 320
    invoke-virtual {v1, p0}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/GetSoundPrintRequest;->setAuthInfo(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v1, p1, p2}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/GetSoundPrintRequest;->setPrintId(J)V

    .line 322
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object v0

    const-class v2, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintCreateResp;

    const/4 v5, 0x0

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V

    return-void
.end method

.method public static getSoundPrintCreateResult(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V
    .locals 6

    .line 155
    new-instance v1, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintGetResultRequest;

    invoke-direct {v1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintGetResultRequest;-><init>()V

    .line 156
    invoke-virtual {v1, p0}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintGetResultRequest;->setAuthInfo(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v1, p1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintGetResultRequest;->setVoicePrintInfoData(Ljava/lang/String;)V

    .line 158
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object v0

    const-class v2, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintCreateResp;

    const/4 v5, 0x0

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V

    return-void
.end method

.method public static getSoundPrintList(Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V
    .locals 6

    .line 90
    new-instance v1, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/GetSoundPrintListRequest;

    invoke-direct {v1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/GetSoundPrintListRequest;-><init>()V

    .line 91
    invoke-virtual {v1, p0}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/GetSoundPrintListRequest;->setAuthInfo(Ljava/lang/String;)V

    const-string p0, "ro.product.model"

    .line 94
    invoke-static {p0}, Lcom/alibaba/genie/shopping/utils/Utils;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 95
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "AILABS_S1"

    :cond_0
    const-string v0, "_"

    .line 100
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 101
    array-length v0, p0

    const/4 v2, 0x1

    if-le v0, v2, :cond_10

    .line 102
    aget-object p0, p0, v2

    .line 103
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "C3"

    .line 104
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "945"

    goto/16 :goto_0

    :cond_1
    const-string v0, "S1L"

    .line 106
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "824"

    goto/16 :goto_0

    :cond_2
    const-string v0, "S3"

    .line 108
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "1089"

    goto/16 :goto_0

    :cond_3
    const-string v0, "C4"

    .line 110
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p0, "1325"

    goto/16 :goto_0

    :cond_4
    const-string v0, "C5"

    .line 112
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p0, "2231"

    goto/16 :goto_0

    :cond_5
    const-string v0, "S7"

    .line 114
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p0, "2128"

    goto/16 :goto_0

    :cond_6
    const-string v0, "S6"

    .line 116
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "2127"

    goto/16 :goto_0

    :cond_7
    const-string v0, "S5"

    .line 118
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, "2126"

    goto :goto_0

    :cond_8
    const-string v0, "S5A"

    .line 120
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, "2376"

    goto :goto_0

    :cond_9
    const-string v0, "S7A"

    .line 122
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p0, "2427"

    goto :goto_0

    :cond_a
    const-string v0, "D101"

    .line 124
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p0, "2753"

    goto :goto_0

    :cond_b
    const-string v0, "D100"

    .line 126
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p0, "2470"

    goto :goto_0

    :cond_c
    const-string v0, "S7A02"

    .line 128
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p0, "3258"

    goto :goto_0

    :cond_d
    const-string v0, "S8B01"

    .line 130
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p0, "3235"

    goto :goto_0

    :cond_e
    const-string v0, "S4A02"

    .line 132
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string p0, "3360"

    goto :goto_0

    :cond_f
    const-string v0, "S7A04"

    .line 134
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    const-string p0, "4026"

    goto :goto_0

    :cond_10
    const-string p0, "145"

    .line 141
    :goto_0
    invoke-virtual {v1, p0}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/GetSoundPrintListRequest;->setProductKey(Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object v0

    const-class v2, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintListResp;

    const/4 v5, 0x0

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V

    return-void
.end method

.method public static getUserInfo(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V
    .locals 6

    .line 212
    new-instance v1, Lcom/alibaba/genie/shopping/mtop/request/UserInfoRequest;

    invoke-direct {v1}, Lcom/alibaba/genie/shopping/mtop/request/UserInfoRequest;-><init>()V

    .line 213
    invoke-virtual {v1, p0}, Lcom/alibaba/genie/shopping/mtop/request/UserInfoRequest;->setAuthInfo(Ljava/lang/String;)V

    .line 214
    invoke-virtual {v1, p1}, Lcom/alibaba/genie/shopping/mtop/request/UserInfoRequest;->setType(Ljava/lang/String;)V

    .line 215
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object v0

    const-class v2, Lcom/alibaba/genie/shopping/mtop/response/UserInfoResponse;

    const/4 v5, 0x0

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V

    return-void
.end method

.method public static getVoicePrintAddResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 401
    new-instance v1, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnhanceAddRequest;

    invoke-direct {v1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnhanceAddRequest;-><init>()V

    .line 402
    invoke-virtual {v1, p0}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnhanceAddRequest;->setAuthInfo(Ljava/lang/String;)V

    .line 403
    invoke-virtual {v1, p1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnhanceAddRequest;->setName(Ljava/lang/String;)V

    .line 404
    invoke-virtual {v1, p2}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnhanceAddRequest;->setIsEdit(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v1, p3}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintEnhanceAddRequest;->setPosition(Ljava/lang/String;)V

    .line 406
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object v0

    const-class v2, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundprintEnhanceAddResponse;

    const/4 v5, 0x0

    move-object v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V

    return-void
.end method

.method public static getVoicePrintPayCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V
    .locals 6

    .line 283
    new-instance v1, Lcom/alibaba/genie/shopping/mtop/request/ShoppingGetVoicePrintPayCodeRequest;

    invoke-direct {v1}, Lcom/alibaba/genie/shopping/mtop/request/ShoppingGetVoicePrintPayCodeRequest;-><init>()V

    .line 284
    invoke-virtual {v1, p0}, Lcom/alibaba/genie/shopping/mtop/request/ShoppingGetVoicePrintPayCodeRequest;->setAuthInfo(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v1, p1}, Lcom/alibaba/genie/shopping/mtop/request/ShoppingGetVoicePrintPayCodeRequest;->setOrderCode(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v1, p2}, Lcom/alibaba/genie/shopping/mtop/request/ShoppingGetVoicePrintPayCodeRequest;->setPayOrderCode(Ljava/lang/String;)V

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVoicePrintPayCode pay code; authInfo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; orderCode="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; payOrderCode="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "jesonma"

    invoke-static {p1, p0}, Lcom/alibaba/genie/shopping/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object v0

    const-class v2, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetVoicePrintPayCodeResponse;

    const/4 v5, 0x0

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V

    return-void
.end method

.method public static modifyVoicePrint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V
    .locals 6
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 379
    new-instance v1, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/ModifysoundprintRequest;

    invoke-direct {v1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/ModifysoundprintRequest;-><init>()V

    .line 380
    invoke-virtual {v1, p0}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/ModifysoundprintRequest;->setAuthInfo(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v1, p1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/ModifysoundprintRequest;->setName(Ljava/lang/String;)V

    .line 382
    invoke-virtual {v1, p2}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/ModifysoundprintRequest;->setUuid(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v1, p3}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/ModifysoundprintRequest;->setPosition(Ljava/lang/String;)V

    .line 384
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object v0

    const-class v2, Lcom/alibaba/ailabs/tg/mtop/response/NoModelResp;

    const/4 v5, 0x0

    move-object v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V

    return-void
.end method

.method public static openOrCloseVoicePrintPay(Ljava/lang/String;JLjava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V
    .locals 6

    .line 242
    new-instance v1, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintPayCloseRequest;

    invoke-direct {v1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintPayCloseRequest;-><init>()V

    .line 243
    invoke-virtual {v1, p0}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintPayCloseRequest;->setAuthInfo(Ljava/lang/String;)V

    .line 244
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintPayCloseRequest;->setPrintId(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v1, p3}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintPayCloseRequest;->setEnable(Ljava/lang/String;)V

    .line 246
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object v0

    const-class v2, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintPayCloseResp;

    const/4 v5, 0x0

    move-object v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V

    return-void
.end method

.method public static removeSoundPrintById(Ljava/lang/String;JLcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V
    .locals 6

    .line 227
    new-instance v1, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintRemoveRequest;

    invoke-direct {v1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintRemoveRequest;-><init>()V

    .line 228
    invoke-virtual {v1, p0}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintRemoveRequest;->setAuthInfo(Ljava/lang/String;)V

    .line 229
    invoke-virtual {v1, p1, p2}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintRemoveRequest;->setPrintId(J)V

    .line 230
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object v0

    const-class v2, Lcom/alibaba/ailabs/tg/mtop/response/NoModelResp;

    const/4 v5, 0x0

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V

    return-void
.end method

.method public static renameSoundPrintById(Ljava/lang/String;JLjava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V
    .locals 6

    .line 336
    new-instance v1, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintRenameRequest;

    invoke-direct {v1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintRenameRequest;-><init>()V

    .line 337
    invoke-virtual {v1, p0}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintRenameRequest;->setAuthInfo(Ljava/lang/String;)V

    .line 338
    invoke-virtual {v1, p1, p2}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintRenameRequest;->setPrintId(J)V

    .line 339
    invoke-virtual {v1, p3}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SoundPrintRenameRequest;->setName(Ljava/lang/String;)V

    .line 340
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object v0

    const-class v2, Lcom/alibaba/ailabs/tg/mtop/response/NoModelResp;

    const/4 v5, 0x0

    move-object v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V

    return-void
.end method

.method public static signAliPayProtocol(Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V
    .locals 6

    .line 270
    new-instance v1, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/AlipaySignRequest;

    invoke-direct {v1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/AlipaySignRequest;-><init>()V

    .line 271
    invoke-virtual {v1, p0}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/AlipaySignRequest;->setAuthInfo(Ljava/lang/String;)V

    .line 272
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object v0

    const-class v2, Lcom/alibaba/ailabs/tg/mtop/response/NoModelResp;

    const/4 v5, 0x0

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V

    return-void
.end method

.method public static updateSwitchStatus(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V
    .locals 6

    .line 454
    new-instance v1, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SwitchInsertorupdateRequest;

    invoke-direct {v1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SwitchInsertorupdateRequest;-><init>()V

    .line 455
    invoke-virtual {v1, p0}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SwitchInsertorupdateRequest;->setAuthInfo(Ljava/lang/String;)V

    .line 456
    invoke-virtual {v1, p1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/request/SwitchInsertorupdateRequest;->setVoicePrintSwitch(Ljava/lang/String;)V

    .line 457
    invoke-static {}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->getInstance()Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;

    move-result-object v0

    const-class v2, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SwitchInsertorupdateResponse;

    const/4 v5, 0x0

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/tg/network/mtop/inner/MtopHelper;->asyncRequestApi(Lmtopsdk/mtop/domain/IMTOPDataObject;Ljava/lang/Class;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;ILjava/lang/Object;)V

    return-void
.end method
