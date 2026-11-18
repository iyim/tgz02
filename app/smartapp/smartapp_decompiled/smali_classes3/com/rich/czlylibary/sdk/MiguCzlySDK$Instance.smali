.class final enum Lcom/rich/czlylibary/sdk/MiguCzlySDK$Instance;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rich/czlylibary/sdk/MiguCzlySDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Instance"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/rich/czlylibary/sdk/MiguCzlySDK$Instance;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/rich/czlylibary/sdk/MiguCzlySDK$Instance;

.field public static final enum CZLYSDK:Lcom/rich/czlylibary/sdk/MiguCzlySDK$Instance;


# instance fields
.field private czlySDK:Lcom/rich/czlylibary/sdk/MiguCzlySDK;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/rich/czlylibary/sdk/MiguCzlySDK$Instance;

    const/4 v1, 0x0

    const-string v2, "CZLYSDK"

    invoke-direct {v0, v2, v1}, Lcom/rich/czlylibary/sdk/MiguCzlySDK$Instance;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/rich/czlylibary/sdk/MiguCzlySDK$Instance;->CZLYSDK:Lcom/rich/czlylibary/sdk/MiguCzlySDK$Instance;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/rich/czlylibary/sdk/MiguCzlySDK$Instance;

    sget-object v2, Lcom/rich/czlylibary/sdk/MiguCzlySDK$Instance;->CZLYSDK:Lcom/rich/czlylibary/sdk/MiguCzlySDK$Instance;

    aput-object v2, v0, v1

    sput-object v0, Lcom/rich/czlylibary/sdk/MiguCzlySDK$Instance;->$VALUES:[Lcom/rich/czlylibary/sdk/MiguCzlySDK$Instance;

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

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    new-instance p1, Lcom/rich/czlylibary/sdk/MiguCzlySDK;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/rich/czlylibary/sdk/MiguCzlySDK;-><init>(Lcom/rich/czlylibary/sdk/MiguCzlySDK$1;)V

    iput-object p1, p0, Lcom/rich/czlylibary/sdk/MiguCzlySDK$Instance;->czlySDK:Lcom/rich/czlylibary/sdk/MiguCzlySDK;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/rich/czlylibary/sdk/MiguCzlySDK$Instance;
    .locals 1

    const-class v0, Lcom/rich/czlylibary/sdk/MiguCzlySDK$Instance;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/rich/czlylibary/sdk/MiguCzlySDK$Instance;

    return-object p0
.end method

.method public static values()[Lcom/rich/czlylibary/sdk/MiguCzlySDK$Instance;
    .locals 1

    sget-object v0, Lcom/rich/czlylibary/sdk/MiguCzlySDK$Instance;->$VALUES:[Lcom/rich/czlylibary/sdk/MiguCzlySDK$Instance;

    invoke-virtual {v0}, [Lcom/rich/czlylibary/sdk/MiguCzlySDK$Instance;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/rich/czlylibary/sdk/MiguCzlySDK$Instance;

    return-object v0
.end method


# virtual methods
.method public getCzlyInit()Lcom/rich/czlylibary/sdk/MiguCzlySDK;
    .locals 1

    iget-object v0, p0, Lcom/rich/czlylibary/sdk/MiguCzlySDK$Instance;->czlySDK:Lcom/rich/czlylibary/sdk/MiguCzlySDK;

    return-object v0
.end method
