.class final enum Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;
.super Ljava/lang/Enum;
.source "WVPageTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/taobao/windvane/extra/performance2/WVPageTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "WVPageState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

.field public static final enum WVPageStateError:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

.field public static final enum WVPageStateErrorOccurred:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

.field public static final enum WVPageStateFinishLoad:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

.field public static final enum WVPageStateInit:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

.field public static final enum WVPageStateLoadURL:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

.field public static final enum WVPageStateStartLoad:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;


# instance fields
.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 83
    new-instance v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    const/4 v1, 0x0

    const-string v2, "WVPageStateError"

    const/4 v3, -0x1

    invoke-direct {v0, v2, v1, v3}, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->WVPageStateError:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    .line 84
    new-instance v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    const/4 v2, 0x1

    const-string v3, "WVPageStateInit"

    invoke-direct {v0, v3, v2, v1}, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->WVPageStateInit:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    .line 85
    new-instance v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    const/4 v3, 0x2

    const-string v4, "WVPageStateLoadURL"

    invoke-direct {v0, v4, v3, v2}, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->WVPageStateLoadURL:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    .line 86
    new-instance v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    const/4 v4, 0x3

    const-string v5, "WVPageStateStartLoad"

    invoke-direct {v0, v5, v4, v3}, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->WVPageStateStartLoad:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    .line 87
    new-instance v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    const/4 v5, 0x4

    const-string v6, "WVPageStateFinishLoad"

    invoke-direct {v0, v6, v5, v4}, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->WVPageStateFinishLoad:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    .line 88
    new-instance v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    const/4 v6, 0x5

    const-string v7, "WVPageStateErrorOccurred"

    invoke-direct {v0, v7, v6, v5}, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->WVPageStateErrorOccurred:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    const/4 v0, 0x6

    .line 82
    new-array v0, v0, [Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    sget-object v7, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->WVPageStateError:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    aput-object v7, v0, v1

    sget-object v1, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->WVPageStateInit:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    aput-object v1, v0, v2

    sget-object v1, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->WVPageStateLoadURL:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    aput-object v1, v0, v3

    sget-object v1, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->WVPageStateStartLoad:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    aput-object v1, v0, v4

    sget-object v1, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->WVPageStateFinishLoad:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    aput-object v1, v0, v5

    sget-object v1, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->WVPageStateErrorOccurred:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    aput-object v1, v0, v6

    sput-object v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->$VALUES:[Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

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

    .line 92
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 93
    iput p3, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->state:I

    return-void
.end method

.method public static valueOf(I)Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;
    .locals 1

    const/4 v0, -0x1

    if-eq p0, v0, :cond_5

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 109
    :cond_0
    sget-object p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->WVPageStateErrorOccurred:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    return-object p0

    .line 107
    :cond_1
    sget-object p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->WVPageStateFinishLoad:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    return-object p0

    .line 105
    :cond_2
    sget-object p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->WVPageStateStartLoad:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    return-object p0

    .line 103
    :cond_3
    sget-object p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->WVPageStateLoadURL:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    return-object p0

    .line 101
    :cond_4
    sget-object p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->WVPageStateInit:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    return-object p0

    .line 99
    :cond_5
    sget-object p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->WVPageStateError:Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;
    .locals 1

    .line 82
    const-class v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    return-object p0
.end method

.method public static values()[Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;
    .locals 1

    .line 82
    sget-object v0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->$VALUES:[Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    invoke-virtual {v0}, [Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 116
    iget v0, p0, Landroid/taobao/windvane/extra/performance2/WVPageTracker$WVPageState;->state:I

    return v0
.end method
