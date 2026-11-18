.class public final enum Lcom/taobao/orange/OConstant$UPDMODE;
.super Ljava/lang/Enum;
.source "OConstant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/orange/OConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UPDMODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/orange/OConstant$UPDMODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/orange/OConstant$UPDMODE;

.field public static final enum O_ALL:Lcom/taobao/orange/OConstant$UPDMODE;

.field public static final enum O_EVENT:Lcom/taobao/orange/OConstant$UPDMODE;

.field public static final enum O_XMD:Lcom/taobao/orange/OConstant$UPDMODE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 155
    new-instance v0, Lcom/taobao/orange/OConstant$UPDMODE;

    const/4 v1, 0x0

    const-string v2, "O_XMD"

    invoke-direct {v0, v2, v1}, Lcom/taobao/orange/OConstant$UPDMODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/orange/OConstant$UPDMODE;->O_XMD:Lcom/taobao/orange/OConstant$UPDMODE;

    .line 159
    new-instance v0, Lcom/taobao/orange/OConstant$UPDMODE;

    const/4 v2, 0x1

    const-string v3, "O_EVENT"

    invoke-direct {v0, v3, v2}, Lcom/taobao/orange/OConstant$UPDMODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/orange/OConstant$UPDMODE;->O_EVENT:Lcom/taobao/orange/OConstant$UPDMODE;

    .line 163
    new-instance v0, Lcom/taobao/orange/OConstant$UPDMODE;

    const/4 v3, 0x2

    const-string v4, "O_ALL"

    invoke-direct {v0, v4, v3}, Lcom/taobao/orange/OConstant$UPDMODE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/orange/OConstant$UPDMODE;->O_ALL:Lcom/taobao/orange/OConstant$UPDMODE;

    const/4 v0, 0x3

    .line 151
    new-array v0, v0, [Lcom/taobao/orange/OConstant$UPDMODE;

    sget-object v4, Lcom/taobao/orange/OConstant$UPDMODE;->O_XMD:Lcom/taobao/orange/OConstant$UPDMODE;

    aput-object v4, v0, v1

    sget-object v1, Lcom/taobao/orange/OConstant$UPDMODE;->O_EVENT:Lcom/taobao/orange/OConstant$UPDMODE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/orange/OConstant$UPDMODE;->O_ALL:Lcom/taobao/orange/OConstant$UPDMODE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/taobao/orange/OConstant$UPDMODE;->$VALUES:[Lcom/taobao/orange/OConstant$UPDMODE;

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

    .line 151
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(I)Lcom/taobao/orange/OConstant$UPDMODE;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 174
    sget-object p0, Lcom/taobao/orange/OConstant$UPDMODE;->O_XMD:Lcom/taobao/orange/OConstant$UPDMODE;

    return-object p0

    .line 172
    :cond_0
    sget-object p0, Lcom/taobao/orange/OConstant$UPDMODE;->O_ALL:Lcom/taobao/orange/OConstant$UPDMODE;

    return-object p0

    .line 170
    :cond_1
    sget-object p0, Lcom/taobao/orange/OConstant$UPDMODE;->O_EVENT:Lcom/taobao/orange/OConstant$UPDMODE;

    return-object p0

    .line 168
    :cond_2
    sget-object p0, Lcom/taobao/orange/OConstant$UPDMODE;->O_XMD:Lcom/taobao/orange/OConstant$UPDMODE;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/orange/OConstant$UPDMODE;
    .locals 1

    .line 151
    const-class v0, Lcom/taobao/orange/OConstant$UPDMODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/orange/OConstant$UPDMODE;

    return-object p0
.end method

.method public static values()[Lcom/taobao/orange/OConstant$UPDMODE;
    .locals 1

    .line 151
    sget-object v0, Lcom/taobao/orange/OConstant$UPDMODE;->$VALUES:[Lcom/taobao/orange/OConstant$UPDMODE;

    invoke-virtual {v0}, [Lcom/taobao/orange/OConstant$UPDMODE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/orange/OConstant$UPDMODE;

    return-object v0
.end method
