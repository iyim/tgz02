.class public Lcom/alibaba/genie/shopping/voiceprint/open/model/VoicePrintOpenModel;
.super Lcom/alibaba/genie/shopping/model/BaseModel;
.source "VoicePrintOpenModel.java"

# interfaces
.implements Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "VoicePrintOpenModel"


# instance fields
.field private mVoicePrintOpenCallback:Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/model/BaseModel;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/model/VoicePrintOpenModel;->mVoicePrintOpenCallback:Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;

    return-void
.end method


# virtual methods
.method public cancelSoundPrint(Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x9

    .line 111
    invoke-static {p1, p0, v0}, Lcom/alibaba/genie/shopping/voiceprint/mtop/VoicePrintRequestManager;->cancelSoundPrint(Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public createSoundPrintPay(Ljava/lang/String;J)V
    .locals 1

    const/4 v0, 0x5

    .line 85
    invoke-static {p1, p2, p3, p0, v0}, Lcom/alibaba/genie/shopping/voiceprint/mtop/VoicePrintRequestManager;->createSoundPrintPay(Ljava/lang/String;JLcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public getSoundPrintCreateResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    .line 58
    invoke-static {p1, p2, p0, v0}, Lcom/alibaba/genie/shopping/voiceprint/mtop/VoicePrintRequestManager;->getSoundPrintCreateResult(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public getSoundPrintList(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 40
    invoke-static {p1, p0, v0}, Lcom/alibaba/genie/shopping/voiceprint/mtop/VoicePrintRequestManager;->getSoundPrintList(Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public getSoundPrintPayCreateResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    .line 67
    invoke-static {p1, p2, p0, v0}, Lcom/alibaba/genie/shopping/voiceprint/mtop/VoicePrintRequestManager;->getPayPasswordCreateResult(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public getVoicePrintPayCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const v0, 0x186a7

    .line 121
    invoke-static {p1, p2, p3, p0, v0}, Lcom/alibaba/genie/shopping/voiceprint/mtop/VoicePrintRequestManager;->getVoicePrintPayCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onResponseFailed(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 p4, 0x1

    if-eq p1, p4, :cond_3

    const/4 p4, 0x2

    if-eq p1, p4, :cond_2

    const/4 p4, 0x3

    if-eq p1, p4, :cond_1

    const p4, 0x186a7

    const/4 v0, 0x0

    if-eq p1, p4, :cond_0

    const-string p4, "-2"

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 257
    :pswitch_0
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/model/VoicePrintOpenModel;->mVoicePrintOpenCallback:Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;

    const-string p2, "cancel error"

    invoke-interface {p1, p4, p2}, Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;->onCancelVoicePrintResult(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 254
    :pswitch_1
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/model/VoicePrintOpenModel;->mVoicePrintOpenCallback:Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;

    invoke-interface {p1, v0}, Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;->onOpenOrCloseSoundPrintPay(Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintPayCloseModel;)V

    goto :goto_0

    .line 251
    :pswitch_2
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/model/VoicePrintOpenModel;->mVoicePrintOpenCallback:Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;

    const-string p2, "del error"

    invoke-interface {p1, p4, p2}, Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;->onDelVoicePrintResult(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 248
    :pswitch_3
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/model/VoicePrintOpenModel;->mVoicePrintOpenCallback:Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;

    invoke-interface {p1, p2, p3}, Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;->getVoicePrintPayCreateResultFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :pswitch_4
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/model/VoicePrintOpenModel;->mVoicePrintOpenCallback:Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;

    invoke-interface {p1, p2, p3}, Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;->voicePrintPayCreateFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 260
    :cond_0
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/model/VoicePrintOpenModel;->mVoicePrintOpenCallback:Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;

    invoke-interface {p1, v0}, Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;->onGetVoicePrintPayCode(Lcom/alibaba/genie/shopping/mtop/response/ShoppingVoicePrintPayCode;)V

    goto :goto_0

    .line 240
    :cond_1
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/model/VoicePrintOpenModel;->mVoicePrintOpenCallback:Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;

    invoke-interface {p1, p2, p3}, Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;->getVoicePrintCreateResultFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_2
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/model/VoicePrintOpenModel;->mVoicePrintOpenCallback:Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;

    invoke-interface {p1, p2, p3}, Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;->getSoundPrintListFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 236
    :cond_3
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/model/VoicePrintOpenModel;->mVoicePrintOpenCallback:Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;

    invoke-interface {p1, p2, p3}, Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;->voicePrintCreateFailure(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onResponseSuccess(Lmtopsdk/mtop/domain/BaseOutDo;ILjava/lang/Object;)V
    .locals 3

    const/4 p3, 0x1

    const-string v0, "mSoundPrintInfo is null"

    const-string v1, "-1"

    if-eq p2, p3, :cond_8

    const/4 p3, 0x2

    if-eq p2, p3, :cond_7

    const/4 p3, 0x3

    if-eq p2, p3, :cond_6

    const p3, 0x186a7

    const/4 v2, 0x0

    if-eq p2, p3, :cond_4

    const-string p3, "NoModelResp is null"

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    .line 194
    :pswitch_0
    check-cast p1, Lcom/alibaba/ailabs/tg/mtop/response/NoModelResp;

    if-eqz p1, :cond_0

    .line 195
    invoke-virtual {p1}, Lcom/alibaba/ailabs/tg/mtop/response/NoModelResp;->getData()Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 196
    iget-object p2, p0, Lcom/alibaba/genie/shopping/voiceprint/open/model/VoicePrintOpenModel;->mVoicePrintOpenCallback:Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/tg/mtop/response/NoModelResp;->getData()Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;

    move-result-object p3

    invoke-virtual {p3}, Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;->getMsgCode()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/alibaba/ailabs/tg/mtop/response/NoModelResp;->getData()Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;->getMsgCode()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;->onCancelVoicePrintResult(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 198
    :cond_0
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/model/VoicePrintOpenModel;->mVoicePrintOpenCallback:Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;

    invoke-interface {p1, v1, p3}, Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;->onCancelVoicePrintResult(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 186
    :pswitch_1
    check-cast p1, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintPayCloseResp;

    if-eqz p1, :cond_1

    .line 187
    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintPayCloseResp;->getData()Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintPayCloseData;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 188
    iget-object p2, p0, Lcom/alibaba/genie/shopping/voiceprint/open/model/VoicePrintOpenModel;->mVoicePrintOpenCallback:Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintPayCloseResp;->getData()Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintPayCloseData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintPayCloseData;->getModel()Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintPayCloseModel;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;->onOpenOrCloseSoundPrintPay(Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintPayCloseModel;)V

    goto/16 :goto_0

    .line 190
    :cond_1
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/model/VoicePrintOpenModel;->mVoicePrintOpenCallback:Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;

    invoke-interface {p1, v2}, Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;->onOpenOrCloseSoundPrintPay(Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintPayCloseModel;)V

    goto/16 :goto_0

    .line 178
    :pswitch_2
    check-cast p1, Lcom/alibaba/ailabs/tg/mtop/response/NoModelResp;

    if-eqz p1, :cond_2

    .line 179
    invoke-virtual {p1}, Lcom/alibaba/ailabs/tg/mtop/response/NoModelResp;->getData()Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 180
    iget-object p2, p0, Lcom/alibaba/genie/shopping/voiceprint/open/model/VoicePrintOpenModel;->mVoicePrintOpenCallback:Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/tg/mtop/response/NoModelResp;->getData()Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;

    move-result-object p3

    invoke-virtual {p3}, Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;->getMsgCode()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/alibaba/ailabs/tg/mtop/response/NoModelResp;->getData()Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/tg/mtop/data/BaseDataBean;->getMsgCode()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p3, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;->onDelVoicePrintResult(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 182
    :cond_2
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/model/VoicePrintOpenModel;->mVoicePrintOpenCallback:Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;

    invoke-interface {p1, v1, p3}, Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;->onDelVoicePrintResult(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 158
    :pswitch_3
    check-cast p1, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintCreateResp;

    .line 159
    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintCreateResp;->getData()Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintCreate;

    move-result-object p1

    .line 163
    iget-object p2, p0, Lcom/alibaba/genie/shopping/voiceprint/open/model/VoicePrintOpenModel;->mVoicePrintOpenCallback:Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintCreate;->getModel()Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;->getVoicePrintPayCreateResultSuccess(Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;)V

    goto/16 :goto_0

    .line 167
    :pswitch_4
    check-cast p1, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintCreateResp;

    .line 168
    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintCreateResp;->getData()Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintCreate;

    move-result-object p1

    .line 169
    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintCreate;->getModel()Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 171
    iget-object p2, p0, Lcom/alibaba/genie/shopping/voiceprint/open/model/VoicePrintOpenModel;->mVoicePrintOpenCallback:Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintCreate;->getModel()Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;->voicePrintPayCreateSuccess(Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;)V

    goto/16 :goto_0

    .line 173
    :cond_3
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/model/VoicePrintOpenModel;->mVoicePrintOpenCallback:Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;

    invoke-interface {p1, v1, v0}, Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;->voicePrintPayCreateFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 202
    :cond_4
    check-cast p1, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetVoicePrintPayCodeResponse;

    if-eqz p1, :cond_5

    .line 204
    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetVoicePrintPayCodeResponse;->getData()Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetVoicePrintPayCodeResponseData;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetVoicePrintPayCodeResponse;->getData()Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetVoicePrintPayCodeResponseData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetVoicePrintPayCodeResponseData;->getModel()Lcom/alibaba/genie/shopping/mtop/response/ShoppingVoicePrintPayCode;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 205
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "get pay code, printPayCodeResponse="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetVoicePrintPayCodeResponse;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "jesonma"

    invoke-static {p3, p2}, Lcom/alibaba/genie/shopping/utils/APPLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetVoicePrintPayCodeResponse;->getData()Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetVoicePrintPayCodeResponseData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/mtop/response/ShoppingGetVoicePrintPayCodeResponseData;->getModel()Lcom/alibaba/genie/shopping/mtop/response/ShoppingVoicePrintPayCode;

    move-result-object v2

    .line 208
    :cond_5
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/model/VoicePrintOpenModel;->mVoicePrintOpenCallback:Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;

    invoke-interface {p1, v2}, Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;->onGetVoicePrintPayCode(Lcom/alibaba/genie/shopping/mtop/response/ShoppingVoicePrintPayCode;)V

    goto :goto_0

    .line 149
    :cond_6
    check-cast p1, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintCreateResp;

    .line 150
    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintCreateResp;->getData()Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintCreate;

    move-result-object p1

    .line 154
    iget-object p2, p0, Lcom/alibaba/genie/shopping/voiceprint/open/model/VoicePrintOpenModel;->mVoicePrintOpenCallback:Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintCreate;->getModel()Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;->getVoicePrintCreateResultSuccess(Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;)V

    goto :goto_0

    .line 129
    :cond_7
    check-cast p1, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintListResp;

    .line 130
    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintListResp;->getData()Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintList;->getModel()Ljava/util/List;

    move-result-object p1

    .line 132
    iget-object p2, p0, Lcom/alibaba/genie/shopping/voiceprint/open/model/VoicePrintOpenModel;->mVoicePrintOpenCallback:Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;

    invoke-interface {p2, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;->getSoundPrintListSuccess(Ljava/util/List;)V

    goto :goto_0

    .line 136
    :cond_8
    check-cast p1, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintCreateResp;

    .line 137
    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/response/SoundPrintCreateResp;->getData()Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintCreate;

    move-result-object p1

    .line 138
    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintCreate;->getModel()Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    move-result-object p2

    if-eqz p2, :cond_9

    .line 141
    iget-object p2, p0, Lcom/alibaba/genie/shopping/voiceprint/open/model/VoicePrintOpenModel;->mVoicePrintOpenCallback:Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintCreate;->getModel()Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;->voicePrintCreateSuccess(Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;)V

    goto :goto_0

    .line 143
    :cond_9
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/model/VoicePrintOpenModel;->mVoicePrintOpenCallback:Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;

    invoke-interface {p1, v1, v0}, Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;->voicePrintCreateFailure(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public openOrCloseVoicePrintPay(Ljava/lang/String;JLjava/lang/String;)V
    .locals 6

    const/16 v5, 0x8

    move-object v0, p1

    move-wide v1, p2

    move-object v3, p4

    move-object v4, p0

    .line 103
    invoke-static/range {v0 .. v5}, Lcom/alibaba/genie/shopping/voiceprint/mtop/VoicePrintRequestManager;->openOrCloseVoicePrintPay(Ljava/lang/String;JLjava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public removeSoundPrintById(Ljava/lang/String;J)V
    .locals 1

    const/4 v0, 0x7

    .line 94
    invoke-static {p1, p2, p3, p0, v0}, Lcom/alibaba/genie/shopping/voiceprint/mtop/VoicePrintRequestManager;->removeSoundPrintById(Ljava/lang/String;JLcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public voicePrintCreate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 49
    invoke-static {p1, p2, p0, v0}, Lcom/alibaba/genie/shopping/voiceprint/mtop/VoicePrintRequestManager;->createSoundPrint(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/ailabs/tg/mtop/OnResponseListener;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
