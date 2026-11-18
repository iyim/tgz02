.class Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar$1;
.super Ljava/lang/Object;
.source "WidgetUIVerticalScrollerBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar$1;->this$0:Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar$1;->this$0:Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->access$002(Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;Z)Z

    .line 38
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar$1;->this$0:Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->access$102(Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;I)I

    .line 39
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar$1;->this$0:Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUIVerticalScrollerBar;->invalidate()V

    return-void
.end method
