.class Lcom/taobao/pexode/Pexode$Singleton;
.super Ljava/lang/Object;
.source "Pexode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/pexode/Pexode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Singleton"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/taobao/pexode/Pexode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Lcom/taobao/pexode/Pexode;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/pexode/Pexode;-><init>(Lcom/taobao/pexode/Pexode$1;)V

    sput-object v0, Lcom/taobao/pexode/Pexode$Singleton;->INSTANCE:Lcom/taobao/pexode/Pexode;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100()Lcom/taobao/pexode/Pexode;
    .locals 1

    .line 43
    sget-object v0, Lcom/taobao/pexode/Pexode$Singleton;->INSTANCE:Lcom/taobao/pexode/Pexode;

    return-object v0
.end method
