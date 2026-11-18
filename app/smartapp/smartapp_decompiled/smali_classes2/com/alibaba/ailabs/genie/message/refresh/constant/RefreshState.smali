.class public final enum Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;
.super Ljava/lang/Enum;
.source "RefreshState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

.field public static final enum LoadFinish:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

.field public static final enum LoadReleased:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

.field public static final enum Loading:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

.field public static final enum None:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

.field public static final enum PullDownCanceled:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

.field public static final enum PullDownToRefresh:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

.field public static final enum PullUpCanceled:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

.field public static final enum PullUpToLoad:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

.field public static final enum RefreshFinish:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

.field public static final enum RefreshReleased:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

.field public static final enum Refreshing:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

.field public static final enum ReleaseToLoad:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

.field public static final enum ReleaseToRefresh:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

.field public static final enum ReleaseToTwoLevel:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

.field public static final enum TwoLevel:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

.field public static final enum TwoLevelFinish:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

.field public static final enum TwoLevelReleased:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;


# instance fields
.field public final isDragging:Z

.field public final isFinishing:Z

.field public final isFooter:Z

.field public final isHeader:Z

.field public final isOpening:Z

.field public final isReleaseToOpening:Z

.field public final isTwoLevel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 15
    new-instance v9, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    const-string v1, "None"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v9, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->None:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    .line 16
    new-instance v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    const-string v11, "PullDownToRefresh"

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->PullDownToRefresh:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    .line 17
    new-instance v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    const-string v2, "PullUpToLoad"

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->PullUpToLoad:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    .line 18
    new-instance v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    const-string v11, "PullDownCanceled"

    const/4 v12, 0x3

    const/4 v14, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->PullDownCanceled:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    .line 19
    new-instance v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    const-string v2, "PullUpCanceled"

    const/4 v3, 0x4

    const/4 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->PullUpCanceled:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    .line 20
    new-instance v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    const-string v11, "ReleaseToRefresh"

    const/4 v12, 0x5

    const/4 v14, 0x1

    const/16 v18, 0x1

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->ReleaseToRefresh:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    .line 21
    new-instance v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    const-string v2, "ReleaseToLoad"

    const/4 v3, 0x6

    const/4 v5, 0x1

    const/4 v9, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->ReleaseToLoad:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    .line 22
    new-instance v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    const-string v11, "ReleaseToTwoLevel"

    const/4 v12, 0x7

    const/16 v17, 0x1

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->ReleaseToTwoLevel:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    .line 23
    new-instance v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    const-string v2, "TwoLevelReleased"

    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->TwoLevelReleased:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    .line 24
    new-instance v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    const-string v11, "RefreshReleased"

    const/16 v12, 0x9

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->RefreshReleased:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    .line 25
    new-instance v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    const-string v2, "LoadReleased"

    const/16 v3, 0xa

    const/4 v4, 0x2

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->LoadReleased:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    .line 26
    new-instance v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    const-string v11, "Refreshing"

    const/16 v12, 0xb

    const/4 v15, 0x1

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->Refreshing:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    .line 27
    new-instance v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    const-string v2, "Loading"

    const/16 v3, 0xc

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->Loading:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    .line 28
    new-instance v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    const-string v11, "TwoLevel"

    const/16 v12, 0xd

    const/16 v17, 0x1

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->TwoLevel:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    .line 29
    new-instance v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    const-string v2, "RefreshFinish"

    const/16 v3, 0xe

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->RefreshFinish:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    .line 30
    new-instance v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    const-string v11, "LoadFinish"

    const/16 v12, 0xf

    const/4 v13, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->LoadFinish:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    .line 31
    new-instance v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    const-string v2, "TwoLevelFinish"

    const/16 v3, 0x10

    const/4 v8, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->TwoLevelFinish:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    const/16 v0, 0x11

    .line 9
    new-array v0, v0, [Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->None:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->PullDownToRefresh:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->PullUpToLoad:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->PullDownCanceled:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->PullUpCanceled:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->ReleaseToRefresh:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->ReleaseToLoad:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->ReleaseToTwoLevel:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->TwoLevelReleased:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->RefreshReleased:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->LoadReleased:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->Refreshing:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->Loading:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->TwoLevel:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->RefreshFinish:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->LoadFinish:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->TwoLevelFinish:Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sput-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->$VALUES:[Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;IIZZZZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZZZZ)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-ne p3, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 42
    :goto_0
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isHeader:Z

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    const/4 p1, 0x1

    .line 43
    :cond_1
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isFooter:Z

    .line 44
    iput-boolean p4, p0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isDragging:Z

    .line 45
    iput-boolean p5, p0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isOpening:Z

    .line 46
    iput-boolean p6, p0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isFinishing:Z

    .line 47
    iput-boolean p7, p0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isTwoLevel:Z

    .line 48
    iput-boolean p8, p0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isReleaseToOpening:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;
    .locals 1

    .line 9
    const-class v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;
    .locals 1

    .line 9
    sget-object v0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->$VALUES:[Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    invoke-virtual {v0}, [Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    return-object v0
.end method


# virtual methods
.method public toFooter()Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;
    .locals 2

    .line 52
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isHeader:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isTwoLevel:Z

    if-nez v0, :cond_0

    .line 53
    invoke-static {}, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->values()[Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->ordinal()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    return-object p0
.end method

.method public toHeader()Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;
    .locals 2

    .line 59
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isFooter:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->isTwoLevel:Z

    if-nez v0, :cond_0

    .line 60
    invoke-static {}, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->values()[Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/message/refresh/constant/RefreshState;->ordinal()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    return-object p0
.end method
