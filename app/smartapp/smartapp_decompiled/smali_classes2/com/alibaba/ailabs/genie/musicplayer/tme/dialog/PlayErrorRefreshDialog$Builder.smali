.class public Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/PlayErrorRefreshDialog$Builder;
.super Ljava/lang/Object;
.source "PlayErrorRefreshDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/PlayErrorRefreshDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private clickListener:Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/PlayErrorRefreshDialog$ClickListener;

.field private context:Landroid/content/Context;


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
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/PlayErrorRefreshDialog$Builder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public create()Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/PlayErrorRefreshDialog;
    .locals 4

    .line 36
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/PlayErrorRefreshDialog$Builder;->context:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 37
    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/PlayErrorRefreshDialog;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/PlayErrorRefreshDialog$Builder;->context:Landroid/content/Context;

    sget v3, Lcom/alibaba/ailabs/genie/musicplayer/R$style;->Dialog:I

    invoke-direct {v1, v2, v3}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/PlayErrorRefreshDialog;-><init>(Landroid/content/Context;I)V

    .line 39
    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$layout;->dialog_play_crash_refresh:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 40
    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->dialog_confirm:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/-$$Lambda$PlayErrorRefreshDialog$Builder$i2ajZVusOBcObJ6vSTe-4U6v0gc;

    invoke-direct {v3, p0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/-$$Lambda$PlayErrorRefreshDialog$Builder$i2ajZVusOBcObJ6vSTe-4U6v0gc;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/PlayErrorRefreshDialog$Builder;Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/PlayErrorRefreshDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$id;->dialog_cancel:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/-$$Lambda$PlayErrorRefreshDialog$Builder$tycgJr0CSuW_Zb8A9RXVQbSZAa0;

    invoke-direct {v3, p0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/-$$Lambda$PlayErrorRefreshDialog$Builder$tycgJr0CSuW_Zb8A9RXVQbSZAa0;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/PlayErrorRefreshDialog$Builder;Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/PlayErrorRefreshDialog;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    .line 53
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/PlayErrorRefreshDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7f6

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/PlayErrorRefreshDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 57
    :goto_0
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/PlayErrorRefreshDialog;->show()V

    .line 58
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/PlayErrorRefreshDialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method public synthetic lambda$create$15$PlayErrorRefreshDialog$Builder(Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/PlayErrorRefreshDialog;Landroid/view/View;)V
    .locals 0

    .line 41
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/PlayErrorRefreshDialog$Builder;->clickListener:Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/PlayErrorRefreshDialog$ClickListener;

    if-eqz p2, :cond_0

    .line 42
    invoke-interface {p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/PlayErrorRefreshDialog$ClickListener;->onConfirm()V

    .line 44
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/PlayErrorRefreshDialog;->dismiss()V

    return-void
.end method

.method public synthetic lambda$create$16$PlayErrorRefreshDialog$Builder(Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/PlayErrorRefreshDialog;Landroid/view/View;)V
    .locals 0

    .line 47
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/PlayErrorRefreshDialog$Builder;->clickListener:Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/PlayErrorRefreshDialog$ClickListener;

    if-eqz p2, :cond_0

    .line 48
    invoke-interface {p2}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/PlayErrorRefreshDialog$ClickListener;->onCancel()V

    .line 50
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/PlayErrorRefreshDialog;->dismiss()V

    return-void
.end method

.method public setClickListener(Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/PlayErrorRefreshDialog$ClickListener;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/PlayErrorRefreshDialog$Builder;->clickListener:Lcom/alibaba/ailabs/genie/musicplayer/tme/dialog/PlayErrorRefreshDialog$ClickListener;

    return-void
.end method
