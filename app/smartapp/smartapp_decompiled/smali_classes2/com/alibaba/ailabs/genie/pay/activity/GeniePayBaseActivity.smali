.class public abstract Lcom/alibaba/ailabs/genie/pay/activity/GeniePayBaseActivity;
.super Landroid/app/Activity;
.source "GeniePayBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/pay/activity/GeniePayBaseActivity$BaseHandler;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "PayBaseActivity"


# instance fields
.field public mBaseHandler:Lcom/alibaba/ailabs/genie/pay/activity/GeniePayBaseActivity$BaseHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private getStatusBarHeight(Landroid/content/Context;)I
    .locals 4

    .line 213
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 215
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public handleBaseMessage(Landroid/os/Message;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public isNeedHandler()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayBaseActivity;->isNeedHandler()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayBaseActivity;->mBaseHandler:Lcom/alibaba/ailabs/genie/pay/activity/GeniePayBaseActivity$BaseHandler;

    if-nez p1, :cond_0

    .line 37
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 38
    new-instance v0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayBaseActivity$BaseHandler;

    invoke-direct {v0, p1}, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayBaseActivity$BaseHandler;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/pay/activity/GeniePayBaseActivity;->mBaseHandler:Lcom/alibaba/ailabs/genie/pay/activity/GeniePayBaseActivity$BaseHandler;

    :cond_0
    return-void
.end method
