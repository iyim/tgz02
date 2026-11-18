.class public Lcom/alibaba/ailabs/genie/genieui/UIDataCenter;
.super Ljava/lang/Object;
.source "UIDataCenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/genieui/UIDataCenter$InstanceHolder;
    }
.end annotation


# instance fields
.field private currentPage:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/UIDataCenter;->currentPage:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/ailabs/genie/genieui/UIDataCenter$1;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/genieui/UIDataCenter;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getInstance()Lcom/alibaba/ailabs/genie/genieui/UIDataCenter;
    .locals 1

    .line 11
    sget-object v0, Lcom/alibaba/ailabs/genie/genieui/UIDataCenter$InstanceHolder;->sInstance:Lcom/alibaba/ailabs/genie/genieui/UIDataCenter;

    return-object v0
.end method


# virtual methods
.method public getCurrentPage()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/genieui/UIDataCenter;->currentPage:Ljava/lang/String;

    return-object v0
.end method

.method public setCurrentPage(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/genieui/UIDataCenter;->currentPage:Ljava/lang/String;

    return-void
.end method
