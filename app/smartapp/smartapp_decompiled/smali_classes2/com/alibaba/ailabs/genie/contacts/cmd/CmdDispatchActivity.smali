.class public Lcom/alibaba/ailabs/genie/contacts/cmd/CmdDispatchActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "CmdDispatchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "contacts_fragmentCmdDispatchActivity"


# instance fields
.field mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/CmdDispatchActivityBinding;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private resolveIntent(Landroid/content/Intent;)V
    .locals 0

    .line 33
    invoke-static {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/CmdDispatchUtils;->resolveIntent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 34
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/cmd/CmdDispatchActivity;->finish()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 45
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/cmd/CmdDispatchActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 24
    sget v0, Lcom/alibaba/ailabs/genie/contacts/R$style;->con_AppTheme_FullScreen_Transparent:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/contacts/cmd/CmdDispatchActivity;->setTheme(I)V

    .line 25
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    sget p1, Lcom/alibaba/ailabs/genie/contacts/R$layout;->cmd_dispatch_activity:I

    invoke-static {p0, p1}, Landroid/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroid/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/contacts/databinding/CmdDispatchActivityBinding;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/CmdDispatchActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/CmdDispatchActivityBinding;

    .line 27
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/contacts/cmd/CmdDispatchActivity;->mBinding:Lcom/alibaba/ailabs/genie/contacts/databinding/CmdDispatchActivityBinding;

    iget-object p1, p1, Lcom/alibaba/ailabs/genie/contacts/databinding/CmdDispatchActivityBinding;->content:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/cmd/CmdDispatchActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/contacts/cmd/CmdDispatchActivity;->resolveIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 39
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onStop()V

    .line 40
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/contacts/cmd/CmdDispatchActivity;->finish()V

    return-void
.end method
