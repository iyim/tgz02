.class Lcom/uc/rmbsdk/export/RmbManager$Holder;
.super Ljava/lang/Object;
.source "RmbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uc/rmbsdk/export/RmbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static INSTANCE:Lcom/uc/rmbsdk/export/RmbManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/uc/rmbsdk/export/RmbManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/uc/rmbsdk/export/RmbManager;-><init>(Lcom/uc/rmbsdk/export/RmbManager$1;)V

    sput-object v0, Lcom/uc/rmbsdk/export/RmbManager$Holder;->INSTANCE:Lcom/uc/rmbsdk/export/RmbManager;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$100()Lcom/uc/rmbsdk/export/RmbManager;
    .locals 1

    .line 35
    sget-object v0, Lcom/uc/rmbsdk/export/RmbManager$Holder;->INSTANCE:Lcom/uc/rmbsdk/export/RmbManager;

    return-object v0
.end method
