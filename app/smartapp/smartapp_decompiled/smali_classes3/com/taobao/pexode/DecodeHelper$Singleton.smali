.class Lcom/taobao/pexode/DecodeHelper$Singleton;
.super Ljava/lang/Object;
.source "DecodeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/pexode/DecodeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Singleton"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/taobao/pexode/DecodeHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    new-instance v0, Lcom/taobao/pexode/DecodeHelper;

    invoke-direct {v0}, Lcom/taobao/pexode/DecodeHelper;-><init>()V

    sput-object v0, Lcom/taobao/pexode/DecodeHelper$Singleton;->INSTANCE:Lcom/taobao/pexode/DecodeHelper;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$000()Lcom/taobao/pexode/DecodeHelper;
    .locals 1

    .line 11
    sget-object v0, Lcom/taobao/pexode/DecodeHelper$Singleton;->INSTANCE:Lcom/taobao/pexode/DecodeHelper;

    return-object v0
.end method
