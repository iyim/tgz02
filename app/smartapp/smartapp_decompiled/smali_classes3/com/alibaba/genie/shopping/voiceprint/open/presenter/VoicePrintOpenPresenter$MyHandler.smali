.class Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;
.super Landroid/os/Handler;
.source "VoicePrintOpenPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;


# direct methods
.method public constructor <init>(Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;Landroid/os/Looper;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;

    .line 71
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 76
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 77
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, -0x7d0

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 80
    :pswitch_0
    new-instance p1, Lcom/alibaba/genie/shopping/voiceprint/open/model/VoicePrintOpenModel;

    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;

    invoke-direct {p1, v0}, Lcom/alibaba/genie/shopping/voiceprint/open/model/VoicePrintOpenModel;-><init>(Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;)V

    invoke-static {}, Lcom/alibaba/genie/shopping/utils/ConstData;->getMtopAuthInfo()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;

    iget-object v1, v1, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->mSoundPrintInfo:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/genie/shopping/voiceprint/open/model/VoicePrintOpenModel;->getSoundPrintCreateResult(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :pswitch_1
    new-instance p1, Lcom/alibaba/genie/shopping/voiceprint/open/model/VoicePrintOpenModel;

    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;

    invoke-direct {p1, v0}, Lcom/alibaba/genie/shopping/voiceprint/open/model/VoicePrintOpenModel;-><init>(Lcom/alibaba/genie/shopping/voiceprint/open/callback/VoicePrintOpenCallback;)V

    invoke-static {}, Lcom/alibaba/genie/shopping/utils/ConstData;->getMtopAuthInfo()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;

    iget-object v1, v1, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->mSoundPrintInfo:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/genie/shopping/voiceprint/open/model/VoicePrintOpenModel;->getSoundPrintPayCreateResult(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :pswitch_2
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->access$000(Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;)Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;

    move-result-object p1

    const/16 v0, -0x3ea

    invoke-virtual {p1, v0}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;->removeMessages(I)V

    .line 106
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->access$000(Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;)Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;

    move-result-object p1

    const/16 v0, -0x3ec

    invoke-virtual {p1, v0}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;->removeMessages(I)V

    .line 109
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->getMvpView()Lcom/alibaba/genie/shopping/mvp/IMvpView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 110
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->getMvpView()Lcom/alibaba/genie/shopping/mvp/IMvpView;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/IVoicePrintOpenMvpView;

    invoke-interface {p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/IVoicePrintOpenMvpView;->goToVoicePrintPayFailPage()V

    goto :goto_0

    .line 87
    :cond_0
    :pswitch_3
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->access$000(Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;)Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;

    move-result-object p1

    const/16 v0, -0x3e9

    invoke-virtual {p1, v0}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;->removeMessages(I)V

    .line 88
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->access$000(Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;)Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;

    move-result-object p1

    const/16 v0, -0x3eb

    invoke-virtual {p1, v0}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;->removeMessages(I)V

    .line 91
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->getMvpView()Lcom/alibaba/genie/shopping/mvp/IMvpView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 92
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;

    invoke-virtual {p1}, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->getMvpView()Lcom/alibaba/genie/shopping/mvp/IMvpView;

    move-result-object p1

    check-cast p1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/IVoicePrintOpenMvpView;

    iget-object v0, p0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter$MyHandler;->this$0:Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;

    iget-object v0, v0, Lcom/alibaba/genie/shopping/voiceprint/open/presenter/VoicePrintOpenPresenter;->mSoundPrintInfo:Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;

    invoke-interface {p1, v0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/IVoicePrintOpenMvpView;->showVoicePrintFailure(Lcom/alibaba/genie/shopping/voiceprint/mtop/data/SoundPrintInfo;)V

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x3ed
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
