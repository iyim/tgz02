.class public Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;
.super Ljava/lang/Object;
.source "WidgetUINotificationBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private leftOperationText:Ljava/lang/String;

.field private listener:Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$NoticationBarOnClickListener;

.field private logoUrl:Ljava/lang/String;

.field private rightOperationText:Ljava/lang/String;

.field private subTitle:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUINoticationType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;)Landroid/content/Context;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;)Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$NoticationBarOnClickListener;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;->listener:Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$NoticationBarOnClickListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;)Ljava/lang/String;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;->logoUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;)Ljava/lang/String;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;)Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUINoticationType;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;->type:Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUINoticationType;

    return-object p0
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;)Ljava/lang/String;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;->subTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;)Ljava/lang/String;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;->leftOperationText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;)Ljava/lang/String;
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;->rightOperationText:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public create()Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;
    .locals 1

    .line 195
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;->access$900(Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;)Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;

    move-result-object v0

    return-object v0
.end method

.method public setLeftOperationText(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;->leftOperationText:Ljava/lang/String;

    return-object p0
.end method

.method public setListener(Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$NoticationBarOnClickListener;)Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;->listener:Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$NoticationBarOnClickListener;

    return-object p0
.end method

.method public setLogoUrl(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;->logoUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setRightOperationText(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;->rightOperationText:Ljava/lang/String;

    return-object p0
.end method

.method public setSubTitle(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;->subTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setType(Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUINoticationType;)Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;->type:Lcom/alibaba/ailabs/genie/widgetui/widget_enum/WidgetUINoticationType;

    return-object p0
.end method

.method public show(Landroid/view/ViewGroup;)Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;
    .locals 1

    .line 199
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar$Builder;->create()Lcom/alibaba/ailabs/genie/widgetui/WidgetUINotificationBar;

    move-result-object v0

    .line 200
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method
