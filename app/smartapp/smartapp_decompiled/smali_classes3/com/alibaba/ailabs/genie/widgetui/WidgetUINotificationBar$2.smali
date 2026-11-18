.class Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$2;
.super Ljava/lang/Object;
.source "WidgetUINotificationBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->initUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$2;->this$0:Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 81
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$2;->this$0:Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->access$100(Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;)Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$2;->this$0:Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->access$100(Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;)Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;->access$200(Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;)Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$NoticationBarOnClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x12c

    .line 82
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/widgetui/widget_utils/WidgetUIFastClickCheck;->isFastClick(J)Z

    move-result p1

    if-nez p1, :cond_0

    .line 83
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$2;->this$0:Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->access$100(Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;)Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;->access$200(Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;)Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$NoticationBarOnClickListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$NoticationBarOnClickListener;->onRightOpenrationClick()V

    :cond_0
    return-void
.end method
