.class public final enum Lcom/taobao/orange/OConstant$SERVER;
.super Ljava/lang/Enum;
.source "OConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/orange/OConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SERVER"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/orange/OConstant$SERVER;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/orange/OConstant$SERVER;

.field public static final enum TAOBAO:Lcom/taobao/orange/OConstant$SERVER;

.field public static final enum YOUKU:Lcom/taobao/orange/OConstant$SERVER;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 133
    new-instance v0, Lcom/taobao/orange/OConstant$SERVER;

    const/4 v1, 0x0

    const-string v2, "TAOBAO"

    invoke-direct {v0, v2, v1}, Lcom/taobao/orange/OConstant$SERVER;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/orange/OConstant$SERVER;->TAOBAO:Lcom/taobao/orange/OConstant$SERVER;

    .line 137
    new-instance v0, Lcom/taobao/orange/OConstant$SERVER;

    const/4 v2, 0x1

    const-string v3, "YOUKU"

    invoke-direct {v0, v3, v2}, Lcom/taobao/orange/OConstant$SERVER;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/orange/OConstant$SERVER;->YOUKU:Lcom/taobao/orange/OConstant$SERVER;

    const/4 v0, 0x2

    .line 129
    new-array v0, v0, [Lcom/taobao/orange/OConstant$SERVER;

    sget-object v3, Lcom/taobao/orange/OConstant$SERVER;->TAOBAO:Lcom/taobao/orange/OConstant$SERVER;

    aput-object v3, v0, v1

    sget-object v1, Lcom/taobao/orange/OConstant$SERVER;->YOUKU:Lcom/taobao/orange/OConstant$SERVER;

    aput-object v1, v0, v2

    sput-object v0, Lcom/taobao/orange/OConstant$SERVER;->$VALUES:[Lcom/taobao/orange/OConstant$SERVER;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 129
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(I)Lcom/taobao/orange/OConstant$SERVER;
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 146
    sget-object p0, Lcom/taobao/orange/OConstant$SERVER;->TAOBAO:Lcom/taobao/orange/OConstant$SERVER;

    return-object p0

    .line 144
    :cond_0
    sget-object p0, Lcom/taobao/orange/OConstant$SERVER;->YOUKU:Lcom/taobao/orange/OConstant$SERVER;

    return-object p0

    .line 142
    :cond_1
    sget-object p0, Lcom/taobao/orange/OConstant$SERVER;->TAOBAO:Lcom/taobao/orange/OConstant$SERVER;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/orange/OConstant$SERVER;
    .locals 1

    .line 129
    const-class v0, Lcom/taobao/orange/OConstant$SERVER;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/orange/OConstant$SERVER;

    return-object p0
.end method

.method public static values()[Lcom/taobao/orange/OConstant$SERVER;
    .locals 1

    .line 129
    sget-object v0, Lcom/taobao/orange/OConstant$SERVER;->$VALUES:[Lcom/taobao/orange/OConstant$SERVER;

    invoke-virtual {v0}, [Lcom/taobao/orange/OConstant$SERVER;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/orange/OConstant$SERVER;

    return-object v0
.end method
