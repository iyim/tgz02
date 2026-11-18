.class Lcom/alibaba/genie/webshopping/activity/TradePayActivity$7;
.super Ljava/lang/Object;
.source "TradePayActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->isCosumenBackKey()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/webshopping/activity/TradePayActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/webshopping/activity/TradePayActivity;)V
    .locals 0

    .line 499
    iput-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$7;->this$0:Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 502
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 503
    iget-object p1, p0, Lcom/alibaba/genie/webshopping/activity/TradePayActivity$7;->this$0:Lcom/alibaba/genie/webshopping/activity/TradePayActivity;

    invoke-virtual {p1}, Lcom/alibaba/genie/webshopping/activity/TradePayActivity;->userExit()V

    return-void
.end method
