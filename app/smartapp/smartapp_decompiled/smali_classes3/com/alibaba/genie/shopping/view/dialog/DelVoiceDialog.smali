.class public Lcom/alibaba/genie/shopping/view/dialog/DelVoiceDialog;
.super Landroid/app/DialogFragment;
.source "DelVoiceDialog.java"


# instance fields
.field private Name:Ljava/lang/String;

.field private onItemDeleteListener:Lcom/alibaba/genie/shopping/voiceprint/open/activity/onItemDeleteListener;

.field tv_giveup:Landroid/widget/TextView;

.field tv_retry:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000(Lcom/alibaba/genie/shopping/view/dialog/DelVoiceDialog;)Lcom/alibaba/genie/shopping/voiceprint/open/activity/onItemDeleteListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/alibaba/genie/shopping/view/dialog/DelVoiceDialog;->onItemDeleteListener:Lcom/alibaba/genie/shopping/voiceprint/open/activity/onItemDeleteListener;

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 29
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/dialog/DelVoiceDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/DelVoiceDialog;->Name:Ljava/lang/String;

    .line 31
    sget p1, Lcom/alibaba/ailabs/genie/shopping/R$style;->shoppingCommonDialog:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/alibaba/genie/shopping/view/dialog/DelVoiceDialog;->setStyle(II)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 46
    sget p3, Lcom/alibaba/ailabs/genie/shopping/R$layout;->delvoice_dialog:I

    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onStart()V
    .locals 3

    .line 35
    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    .line 36
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/dialog/DelVoiceDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 39
    invoke-virtual {p0}, Lcom/alibaba/genie/shopping/view/dialog/DelVoiceDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 40
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 50
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u786e\u5b9a\u8981\u5220\u9664 \u201c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/genie/shopping/view/dialog/DelVoiceDialog;->Name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u201d \u5417\uff1f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_giveup:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/DelVoiceDialog;->tv_giveup:Landroid/widget/TextView;

    .line 53
    sget v0, Lcom/alibaba/ailabs/genie/shopping/R$id;->tv_retry:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/DelVoiceDialog;->tv_retry:Landroid/widget/TextView;

    .line 54
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/DelVoiceDialog;->tv_giveup:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/genie/shopping/view/dialog/DelVoiceDialog$1;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/shopping/view/dialog/DelVoiceDialog$1;-><init>(Lcom/alibaba/genie/shopping/view/dialog/DelVoiceDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/alibaba/genie/shopping/view/dialog/DelVoiceDialog;->tv_retry:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/genie/shopping/view/dialog/DelVoiceDialog$2;

    invoke-direct {v1, p0}, Lcom/alibaba/genie/shopping/view/dialog/DelVoiceDialog$2;-><init>(Lcom/alibaba/genie/shopping/view/dialog/DelVoiceDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public setonDeletedListener(Lcom/alibaba/genie/shopping/voiceprint/open/activity/onItemDeleteListener;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/alibaba/genie/shopping/view/dialog/DelVoiceDialog;->onItemDeleteListener:Lcom/alibaba/genie/shopping/voiceprint/open/activity/onItemDeleteListener;

    return-void
.end method
