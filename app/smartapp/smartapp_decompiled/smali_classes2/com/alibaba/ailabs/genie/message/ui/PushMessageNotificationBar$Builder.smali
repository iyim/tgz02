.class public Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;
.super Ljava/lang/Object;
.source "PushMessageNotificationBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private leftOperationText:Ljava/lang/String;

.field private listener:Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$NoticationBarOnClickListener;

.field private logoUrl:Ljava/lang/String;

.field private rightOperationText:Ljava/lang/String;

.field private sourceBizName:Ljava/lang/String;

.field private subTitle:Ljava/lang/String;

.field private title:Ljava/lang/String;

.field private type:Lcom/alibaba/ailabs/genie/message/utils/NoticationType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;)Landroid/content/Context;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;)Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$NoticationBarOnClickListener;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;->listener:Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$NoticationBarOnClickListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;)Ljava/lang/String;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;->logoUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;)Ljava/lang/String;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;)Lcom/alibaba/ailabs/genie/message/utils/NoticationType;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;->type:Lcom/alibaba/ailabs/genie/message/utils/NoticationType;

    return-object p0
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;)Ljava/lang/String;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;->subTitle:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;)Ljava/lang/String;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;->sourceBizName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;)Ljava/lang/String;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;->leftOperationText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$900(Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;)Ljava/lang/String;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;->rightOperationText:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public create()Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;
    .locals 1

    .line 218
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;->access$1000(Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;)Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;

    move-result-object v0

    return-object v0
.end method

.method public setLeftOperationText(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;->leftOperationText:Ljava/lang/String;

    return-object p0
.end method

.method public setListener(Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$NoticationBarOnClickListener;)Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;->listener:Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$NoticationBarOnClickListener;

    return-object p0
.end method

.method public setLogoUrl(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;->logoUrl:Ljava/lang/String;

    return-object p0
.end method

.method public setRightOperationText(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;->rightOperationText:Ljava/lang/String;

    return-object p0
.end method

.method public setSourceBizName(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;->sourceBizName:Ljava/lang/String;

    return-object p0
.end method

.method public setSubTitle(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;->subTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;->title:Ljava/lang/String;

    return-object p0
.end method

.method public setType(Lcom/alibaba/ailabs/genie/message/utils/NoticationType;)Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;->type:Lcom/alibaba/ailabs/genie/message/utils/NoticationType;

    return-object p0
.end method

.method public show(Landroid/view/ViewGroup;)Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;
    .locals 1

    .line 222
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar$Builder;->create()Lcom/alibaba/ailabs/genie/message/ui/PushMessageNotificationBar;

    move-result-object v0

    .line 223
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method
