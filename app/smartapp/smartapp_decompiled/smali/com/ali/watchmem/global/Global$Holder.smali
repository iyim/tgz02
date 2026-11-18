.class Lcom/ali/watchmem/global/Global$Holder;
.super Ljava/lang/Object;
.source "Global.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ali/watchmem/global/Global;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field static final INSTANCE:Lcom/ali/watchmem/global/Global;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 85
    new-instance v0, Lcom/ali/watchmem/global/Global;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ali/watchmem/global/Global;-><init>(Lcom/ali/watchmem/global/Global$1;)V

    sput-object v0, Lcom/ali/watchmem/global/Global$Holder;->INSTANCE:Lcom/ali/watchmem/global/Global;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
