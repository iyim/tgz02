.class public Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog;
.super Landroid/app/Dialog;
.source "StandbyDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog$DlgBtnNClickListener;
    }
.end annotation


# instance fields
.field private bar:Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;

.field private context:Landroid/content/Context;

.field private listener:Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog$DlgBtnNClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog$DlgBtnNClickListener;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 25
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 26
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog;->context:Landroid/content/Context;

    .line 27
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog;->listener:Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog$DlgBtnNClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog;)Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog$DlgBtnNClickListener;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog;->listener:Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog$DlgBtnNClickListener;

    return-object p0
.end method

.method private initWidgetBar()Landroid/view/View;
    .locals 2

    .line 53
    new-instance v0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUINoticationType;->SINGLE_LINE_TITLE:Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUINoticationType;

    .line 54
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;->setType(Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUINoticationType;)Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;

    move-result-object v0

    const-string v1, "60\u79d2\u540e\u81ea\u52a8\u8fdb\u5165\u5f85\u673a"

    .line 55
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;->setSubTitle(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;

    move-result-object v0

    const-string v1, "\u77e5\u9053\u4e86"

    .line 56
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;->setLeftOperationText(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88\u5f85\u673a"

    .line 57
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;->setRightOperationText(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;

    move-result-object v0

    const-string v1, "https://img.alicdn.com/tfs/TB1RS_jPFP7gK0jSZFjXXc5aXXa-136-136.png"

    .line 58
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;->setLogoUrl(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;

    move-result-object v0

    new-instance v1, Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog$1;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog$1;-><init>(Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog;)V

    .line 59
    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;->setListener(Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$NoticationBarOnClickListener;)Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;->create()Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog;->bar:Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;

    .line 74
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog;->bar:Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 32
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 33
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog;->requestWindowFeature(I)Z

    .line 34
    sget p1, Lcom/alibaba/ailabs/genie/task/R$layout;->standby_user_reminder_dialog:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog;->setContentView(I)V

    .line 35
    sget p1, Lcom/alibaba/ailabs/genie/task/R$id;->standby_container:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 36
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog;->initWidgetBar()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 38
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 39
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    const/16 v0, 0x7d3

    .line 40
    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 41
    sget v0, Lcom/alibaba/ailabs/genie/task/R$color;->transparent:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 43
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/16 v0, 0x8

    .line 44
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v0, 0x0

    .line 45
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const/16 v0, 0x30

    .line 46
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v0, -0x1

    .line 47
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 48
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 49
    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method public setTips(J)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/task/standby/StandbyDialog;->bar:Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;

    if-eqz v0, :cond_0

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "\u79d2\u540e\u81ea\u52a8\u8fdb\u5165\u5f85\u673a"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->setSubTitle(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
