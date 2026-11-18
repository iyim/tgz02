.class Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler$SingletonLoader;
.super Ljava/lang/Object;
.source "AlarmHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonLoader"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;-><init>(Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler$1;)V

    sput-object v0, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler$SingletonLoader;->INSTANCE:Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200()Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;
    .locals 1

    .line 39
    sget-object v0, Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler$SingletonLoader;->INSTANCE:Lcom/alibaba/ailabs/basedomain/ui/AlarmHandler;

    return-object v0
.end method
