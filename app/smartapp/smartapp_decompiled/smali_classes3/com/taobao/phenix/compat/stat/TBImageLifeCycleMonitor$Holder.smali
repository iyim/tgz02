.class Lcom/taobao/phenix/compat/stat/TBImageLifeCycleMonitor$Holder;
.super Ljava/lang/Object;
.source "TBImageLifeCycleMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/phenix/compat/stat/TBImageLifeCycleMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/taobao/phenix/compat/stat/TBImageLifeCycleMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/taobao/phenix/compat/stat/TBImageLifeCycleMonitor;

    invoke-direct {v0}, Lcom/taobao/phenix/compat/stat/TBImageLifeCycleMonitor;-><init>()V

    sput-object v0, Lcom/taobao/phenix/compat/stat/TBImageLifeCycleMonitor$Holder;->INSTANCE:Lcom/taobao/phenix/compat/stat/TBImageLifeCycleMonitor;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000()Lcom/taobao/phenix/compat/stat/TBImageLifeCycleMonitor;
    .locals 1

    .line 10
    sget-object v0, Lcom/taobao/phenix/compat/stat/TBImageLifeCycleMonitor$Holder;->INSTANCE:Lcom/taobao/phenix/compat/stat/TBImageLifeCycleMonitor;

    return-object v0
.end method
