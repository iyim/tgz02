.class public Lcom/alibaba/ailabs/appbox/dialog/DialogStorageLow;
.super Lcom/alibaba/ailabs/appbox/dialog/BaseDialog;
.source "DialogStorageLow.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 17
    invoke-direct {p0}, Lcom/alibaba/ailabs/appbox/dialog/BaseDialog;-><init>()V

    .line 18
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v0

    sget v1, Lcom/alibaba/ailabs/appbox/R$layout;->dialog_storage_low:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 19
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/appbox/dialog/DialogStorageLow;->setContentView(Landroid/view/View;)V

    .line 21
    new-instance v1, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;

    .line 22
    invoke-static {}, Lcom/alibaba/ailabs/appbox/BoxApplication;->getInstance()Landroid/app/Application;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;-><init>(Landroid/content/Context;)V

    sget-object v2, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUINoticationType;->SINGLE_LINE_TITLE:Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUINoticationType;

    .line 24
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;->setType(Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUINoticationType;)Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u53ef\u7528\u7a7a\u95f4\u4e0d\u8db3"

    .line 25
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;->setTitle(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u60a8\u7684\u8bbe\u5907\u53ef\u7528\u7a7a\u95f4\u4e0d\u8db3\uff0c\u8bf7\u6e05\u7406\u3002"

    .line 26
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;->setSubTitle(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;

    move-result-object v1

    const-string/jumbo v2, "\u53bb\u6e05\u7406"

    .line 28
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;->setRightOperationText(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;

    move-result-object v1

    new-instance v2, Lcom/alibaba/ailabs/appbox/dialog/DialogStorageLow$1;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogStorageLow$1;-><init>(Lcom/alibaba/ailabs/appbox/dialog/DialogStorageLow;)V

    .line 29
    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;->setListener(Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$NoticationBarOnClickListener;)Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;

    move-result-object v1

    .line 41
    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;->create()Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;

    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 44
    invoke-virtual {p0}, Lcom/alibaba/ailabs/appbox/dialog/DialogStorageLow;->initViewAndAction()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .line 70
    invoke-super {p0}, Lcom/alibaba/ailabs/appbox/dialog/BaseDialog;->dismiss()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public initViewAndAction()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public show()V
    .locals 0

    .line 55
    invoke-super {p0}, Lcom/alibaba/ailabs/appbox/dialog/BaseDialog;->show()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
