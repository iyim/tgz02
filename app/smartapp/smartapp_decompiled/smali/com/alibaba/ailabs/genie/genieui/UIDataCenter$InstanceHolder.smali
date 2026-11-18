.class Lcom/alibaba/ailabs/genie/genieui/UIDataCenter$InstanceHolder;
.super Ljava/lang/Object;
.source "UIDataCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/genieui/UIDataCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InstanceHolder"
.end annotation


# static fields
.field static sInstance:Lcom/alibaba/ailabs/genie/genieui/UIDataCenter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/alibaba/ailabs/genie/genieui/UIDataCenter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/genie/genieui/UIDataCenter;-><init>(Lcom/alibaba/ailabs/genie/genieui/UIDataCenter$1;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/genieui/UIDataCenter$InstanceHolder;->sInstance:Lcom/alibaba/ailabs/genie/genieui/UIDataCenter;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
