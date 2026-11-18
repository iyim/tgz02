.class public final enum Lcom/taobao/zcache/Environment;
.super Ljava/lang/Enum;
.source "Environment.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/zcache/Environment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/zcache/Environment;

.field public static final enum Daily:Lcom/taobao/zcache/Environment;

.field public static final enum Debug:Lcom/taobao/zcache/Environment;

.field public static final enum Release:Lcom/taobao/zcache/Environment;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 13
    new-instance v0, Lcom/taobao/zcache/Environment;

    const/4 v1, 0x0

    const-string v2, "Debug"

    invoke-direct {v0, v2, v1, v1}, Lcom/taobao/zcache/Environment;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taobao/zcache/Environment;->Debug:Lcom/taobao/zcache/Environment;

    .line 17
    new-instance v0, Lcom/taobao/zcache/Environment;

    const/4 v2, 0x1

    const-string v3, "Daily"

    invoke-direct {v0, v3, v2, v2}, Lcom/taobao/zcache/Environment;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taobao/zcache/Environment;->Daily:Lcom/taobao/zcache/Environment;

    .line 21
    new-instance v0, Lcom/taobao/zcache/Environment;

    const/4 v3, 0x2

    const-string v4, "Release"

    invoke-direct {v0, v4, v3, v3}, Lcom/taobao/zcache/Environment;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/taobao/zcache/Environment;->Release:Lcom/taobao/zcache/Environment;

    const/4 v0, 0x3

    .line 8
    new-array v0, v0, [Lcom/taobao/zcache/Environment;

    sget-object v4, Lcom/taobao/zcache/Environment;->Debug:Lcom/taobao/zcache/Environment;

    aput-object v4, v0, v1

    sget-object v1, Lcom/taobao/zcache/Environment;->Daily:Lcom/taobao/zcache/Environment;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/zcache/Environment;->Release:Lcom/taobao/zcache/Environment;

    aput-object v1, v0, v3

    sput-object v0, Lcom/taobao/zcache/Environment;->$VALUES:[Lcom/taobao/zcache/Environment;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lcom/taobao/zcache/Environment;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/zcache/Environment;
    .locals 1

    .line 8
    const-class v0, Lcom/taobao/zcache/Environment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/zcache/Environment;

    return-object p0
.end method

.method public static values()[Lcom/taobao/zcache/Environment;
    .locals 1

    .line 8
    sget-object v0, Lcom/taobao/zcache/Environment;->$VALUES:[Lcom/taobao/zcache/Environment;

    invoke-virtual {v0}, [Lcom/taobao/zcache/Environment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/zcache/Environment;

    return-object v0
.end method
