.class final Lcom/alibaba/genie/waft/gcs/registry/ServiceCollector$Holder;
.super Ljava/lang/Object;
.source "ServiceCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/genie/waft/gcs/registry/ServiceCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field private static final ourInstance:Lcom/alibaba/genie/waft/gcs/registry/ServiceCollector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/alibaba/genie/waft/gcs/registry/ServiceCollector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/genie/waft/gcs/registry/ServiceCollector;-><init>(Lcom/alibaba/genie/waft/gcs/registry/ServiceCollector$1;)V

    sput-object v0, Lcom/alibaba/genie/waft/gcs/registry/ServiceCollector$Holder;->ourInstance:Lcom/alibaba/genie/waft/gcs/registry/ServiceCollector;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100()Lcom/alibaba/genie/waft/gcs/registry/ServiceCollector;
    .locals 1

    .line 26
    sget-object v0, Lcom/alibaba/genie/waft/gcs/registry/ServiceCollector$Holder;->ourInstance:Lcom/alibaba/genie/waft/gcs/registry/ServiceCollector;

    return-object v0
.end method
