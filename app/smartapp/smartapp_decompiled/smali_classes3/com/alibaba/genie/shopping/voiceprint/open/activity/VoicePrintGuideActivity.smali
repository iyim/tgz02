.class public Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGuideActivity;
.super Lcom/alibaba/genie/shopping/mvp/BaseActivity;
.source "VoicePrintGuideActivity.java"


# instance fields
.field private mBtnStart:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected createPresenter()Lcom/alibaba/genie/shopping/mvp/IMvpPresenter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 18
    invoke-super {p0, p1}, Lcom/alibaba/genie/shopping/mvp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$layout;->activity_voiceprint_guide:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGuideActivity;->setContentView(I)V

    .line 20
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGuideActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$string;->voiceprint_guide_title:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$color;->shoppingPageBackground:I

    invoke-virtual {p0, v0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGuideActivity;->getColor(I)I

    move-result v0

    new-instance v1, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGuideActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGuideActivity$1;-><init>(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGuideActivity;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGuideActivity;->showCommonTitleBar(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    .line 27
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$id;->btn_start:I

    invoke-virtual {p0, p1}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGuideActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGuideActivity;->mBtnStart:Landroid/widget/TextView;

    .line 29
    iget-object p1, p0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGuideActivity;->mBtnStart:Landroid/widget/TextView;

    new-instance v0, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGuideActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGuideActivity$2;-><init>(Lcom/alibaba/genie/shopping/voiceprint/open/activity/VoicePrintGuideActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public processNLPResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;
    .locals 0

    .line 46
    new-instance p1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;-><init>()V

    return-object p1
.end method
