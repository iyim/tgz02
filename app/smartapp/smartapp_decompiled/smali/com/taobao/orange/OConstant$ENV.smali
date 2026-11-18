.class public final enum Lcom/taobao/orange/OConstant$ENV;
.super Ljava/lang/Enum;
.source "OConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/orange/OConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ENV"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/orange/OConstant$ENV;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/orange/OConstant$ENV;

.field public static final enum ONLINE:Lcom/taobao/orange/OConstant$ENV;

.field public static final enum PREPARE:Lcom/taobao/orange/OConstant$ENV;

.field public static final enum TEST:Lcom/taobao/orange/OConstant$ENV;


# instance fields
.field private des:Ljava/lang/String;

.field private envMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 90
    new-instance v0, Lcom/taobao/orange/OConstant$ENV;

    const/4 v1, 0x0

    const-string v2, "ONLINE"

    const-string v3, "online"

    invoke-direct {v0, v2, v1, v1, v3}, Lcom/taobao/orange/OConstant$ENV;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/taobao/orange/OConstant$ENV;->ONLINE:Lcom/taobao/orange/OConstant$ENV;

    .line 94
    new-instance v0, Lcom/taobao/orange/OConstant$ENV;

    const/4 v2, 0x1

    const-string v3, "PREPARE"

    const-string v4, "pre"

    invoke-direct {v0, v3, v2, v2, v4}, Lcom/taobao/orange/OConstant$ENV;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/taobao/orange/OConstant$ENV;->PREPARE:Lcom/taobao/orange/OConstant$ENV;

    .line 98
    new-instance v0, Lcom/taobao/orange/OConstant$ENV;

    const/4 v3, 0x2

    const-string v4, "TEST"

    const-string/jumbo v5, "test"

    invoke-direct {v0, v4, v3, v3, v5}, Lcom/taobao/orange/OConstant$ENV;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/taobao/orange/OConstant$ENV;->TEST:Lcom/taobao/orange/OConstant$ENV;

    const/4 v0, 0x3

    .line 86
    new-array v0, v0, [Lcom/taobao/orange/OConstant$ENV;

    sget-object v4, Lcom/taobao/orange/OConstant$ENV;->ONLINE:Lcom/taobao/orange/OConstant$ENV;

    aput-object v4, v0, v1

    sget-object v1, Lcom/taobao/orange/OConstant$ENV;->PREPARE:Lcom/taobao/orange/OConstant$ENV;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/orange/OConstant$ENV;->TEST:Lcom/taobao/orange/OConstant$ENV;

    aput-object v1, v0, v3

    sput-object v0, Lcom/taobao/orange/OConstant$ENV;->$VALUES:[Lcom/taobao/orange/OConstant$ENV;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 103
    iput p3, p0, Lcom/taobao/orange/OConstant$ENV;->envMode:I

    .line 104
    iput-object p4, p0, Lcom/taobao/orange/OConstant$ENV;->des:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(I)Lcom/taobao/orange/OConstant$ENV;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 124
    sget-object p0, Lcom/taobao/orange/OConstant$ENV;->ONLINE:Lcom/taobao/orange/OConstant$ENV;

    return-object p0

    .line 122
    :cond_0
    sget-object p0, Lcom/taobao/orange/OConstant$ENV;->TEST:Lcom/taobao/orange/OConstant$ENV;

    return-object p0

    .line 120
    :cond_1
    sget-object p0, Lcom/taobao/orange/OConstant$ENV;->PREPARE:Lcom/taobao/orange/OConstant$ENV;

    return-object p0

    .line 118
    :cond_2
    sget-object p0, Lcom/taobao/orange/OConstant$ENV;->ONLINE:Lcom/taobao/orange/OConstant$ENV;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/orange/OConstant$ENV;
    .locals 1

    .line 86
    const-class v0, Lcom/taobao/orange/OConstant$ENV;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/orange/OConstant$ENV;

    return-object p0
.end method

.method public static values()[Lcom/taobao/orange/OConstant$ENV;
    .locals 1

    .line 86
    sget-object v0, Lcom/taobao/orange/OConstant$ENV;->$VALUES:[Lcom/taobao/orange/OConstant$ENV;

    invoke-virtual {v0}, [Lcom/taobao/orange/OConstant$ENV;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/orange/OConstant$ENV;

    return-object v0
.end method


# virtual methods
.method public getDes()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/taobao/orange/OConstant$ENV;->des:Ljava/lang/String;

    return-object v0
.end method

.method public getEnvMode()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/taobao/orange/OConstant$ENV;->envMode:I

    return v0
.end method
