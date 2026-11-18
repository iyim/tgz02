.class public Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog$Builder;
.super Ljava/lang/Object;
.source "MusicBindingRemoveDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private clickListener:Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog$ClickListener;

.field private context:Landroid/content/Context;

.field private musicSource:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog$Builder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public create(I)Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog;
    .locals 9

    .line 41
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog$Builder;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 42
    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog$Builder;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog;-><init>(Landroid/content/Context;)V

    .line 44
    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->dialog_remove_binding:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 45
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->dialog_title:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alibaba/ailabs/genie/musicplayer/R$string;->unbind_title:I

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog$Builder;->musicSource:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v3, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_0

    .line 49
    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->dialog_content:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alibaba/ailabs/genie/musicplayer/R$string;->unbind_content_old:I

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog$Builder;->musicSource:Ljava/lang/String;

    aput-object v7, v6, v8

    aput-object v7, v6, v5

    invoke-virtual {v3, v4, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    if-ne p1, v5, :cond_1

    .line 51
    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->dialog_content:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alibaba/ailabs/genie/musicplayer/R$string;->unbind_content:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog$Builder;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 55
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    const/high16 v4, 0x44800000    # 1024.0f

    div-float/2addr v3, v4

    .line 56
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    const/high16 v4, 0x44160000    # 600.0f

    div-float/2addr v2, v4

    .line 58
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 59
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 60
    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    const/high16 v7, 0x43fe0000    # 508.0f

    mul-float v3, v3, v7

    float-to-int v3, v3

    invoke-virtual {v6, v3}, Landroid/view/View;->setMinimumWidth(I)V

    .line 61
    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/high16 v6, 0x43920000    # 292.0f

    mul-float v2, v2, v6

    float-to-int v2, v2

    invoke-virtual {v3, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 62
    invoke-virtual {v4, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 64
    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->dialog_unbind:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/-$$Lambda$MusicBindingRemoveDialog$Builder$W_piVGRBQ2WB4zzMc3qfFMjw3vg;

    invoke-direct {v3, p0, p1, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/-$$Lambda$MusicBindingRemoveDialog$Builder$W_piVGRBQ2WB4zzMc3qfFMjw3vg;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog$Builder;ILcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    sget p1, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->dialog_cancel:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v2, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/-$$Lambda$MusicBindingRemoveDialog$Builder$U-Vs9rSuAt32Mn-GdpjeCblJXoE;

    invoke-direct {v2, p0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/-$$Lambda$MusicBindingRemoveDialog$Builder$U-Vs9rSuAt32Mn-GdpjeCblJXoE;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog$Builder;Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog;->setContentView(Landroid/view/View;)V

    return-object v1
.end method

.method public synthetic lambda$create$90$MusicBindingRemoveDialog$Builder(ILcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog;Landroid/view/View;)V
    .locals 0

    .line 65
    iget-object p3, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog$Builder;->clickListener:Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog$ClickListener;

    if-eqz p3, :cond_0

    .line 66
    invoke-interface {p3, p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog$ClickListener;->onConfirm(I)V

    .line 68
    :cond_0
    invoke-virtual {p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog;->dismiss()V

    return-void
.end method

.method public synthetic lambda$create$91$MusicBindingRemoveDialog$Builder(Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog;Landroid/view/View;)V
    .locals 0

    .line 72
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog$Builder;->clickListener:Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog$ClickListener;

    if-eqz p2, :cond_0

    .line 73
    invoke-interface {p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog$ClickListener;->onCancel()V

    .line 75
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog;->dismiss()V

    return-void
.end method

.method public setClickListener(Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog$ClickListener;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog$Builder;->clickListener:Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog$ClickListener;

    return-void
.end method

.method public setMusicSource(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog$Builder;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/MusicBindingRemoveDialog$Builder;->musicSource:Ljava/lang/String;

    return-object p0
.end method
