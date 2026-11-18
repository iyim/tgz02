.class Lcom/alibaba/ailabs/appbox/view/MarketAlertWindow$1;
.super Ljava/lang/Object;
.source "MarketAlertWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/appbox/view/MarketAlertWindow;->setCloseView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/appbox/view/MarketAlertWindow;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/appbox/view/MarketAlertWindow;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/alibaba/ailabs/appbox/view/MarketAlertWindow$1;->this$0:Lcom/alibaba/ailabs/appbox/view/MarketAlertWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 107
    iget-object p1, p0, Lcom/alibaba/ailabs/appbox/view/MarketAlertWindow$1;->this$0:Lcom/alibaba/ailabs/appbox/view/MarketAlertWindow;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/appbox/view/MarketAlertWindow;->dismiss()V

    return-void
.end method
