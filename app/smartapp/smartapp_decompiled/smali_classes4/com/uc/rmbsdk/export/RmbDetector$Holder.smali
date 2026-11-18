.class Lcom/uc/rmbsdk/export/RmbDetector$Holder;
.super Ljava/lang/Object;
.source "RmbDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/rmbsdk/export/RmbDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static INSTANCE:Lcom/uc/rmbsdk/export/RmbDetector;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 88
    new-instance v0, Lcom/uc/rmbsdk/export/RmbDetector;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/uc/rmbsdk/export/RmbDetector;-><init>(Lcom/uc/rmbsdk/export/RmbDetector$1;)V

    sput-object v0, Lcom/uc/rmbsdk/export/RmbDetector$Holder;->INSTANCE:Lcom/uc/rmbsdk/export/RmbDetector;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100()Lcom/uc/rmbsdk/export/RmbDetector;
    .locals 1

    .line 87
    sget-object v0, Lcom/uc/rmbsdk/export/RmbDetector$Holder;->INSTANCE:Lcom/uc/rmbsdk/export/RmbDetector;

    return-object v0
.end method
