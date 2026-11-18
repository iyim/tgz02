.class public final enum Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;
.super Ljava/lang/Enum;
.source "PageStateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PageState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

.field public static final enum hotListPage:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

.field public static final enum idle:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

.field public static final enum inputPage:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

.field public static final enum loading:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

.field public static final enum searchEmptyPage:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

.field public static final enum searchResPage:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;


# instance fields
.field private pageName:Ljava/lang/String;

.field private pageSpm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 29
    new-instance v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "idle"

    invoke-direct {v0, v3, v1, v2, v2}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->idle:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    .line 30
    new-instance v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    const/4 v3, 0x1

    const-string v4, "loading"

    invoke-direct {v0, v4, v3, v2, v2}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->loading:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    .line 31
    new-instance v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    const/4 v2, 0x2

    const-string v4, "hotListPage"

    const-string v5, "search.enter"

    const-string v6, "a1z3lt.b78991005"

    invoke-direct {v0, v4, v2, v5, v6}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->hotListPage:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    .line 32
    new-instance v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    const/4 v4, 0x3

    const-string v5, "searchResPage"

    const-string v6, "search.result"

    const-string v7, "a1z3lt.b57969451"

    invoke-direct {v0, v5, v4, v6, v7}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->searchResPage:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    .line 33
    new-instance v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    const/4 v5, 0x4

    const-string v6, "searchEmptyPage"

    const-string v7, "search.noresult"

    const-string v8, "a1z3lt.b78916307"

    invoke-direct {v0, v6, v5, v7, v8}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->searchEmptyPage:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    .line 34
    new-instance v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    const/4 v6, 0x5

    const-string v7, "inputPage"

    const-string v8, "search.input"

    const-string v9, "a1z3lt.b79008195"

    invoke-direct {v0, v7, v6, v8, v9}, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->inputPage:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    const/4 v0, 0x6

    .line 28
    new-array v0, v0, [Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    sget-object v7, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->idle:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    aput-object v7, v0, v1

    sget-object v1, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->loading:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->hotListPage:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->searchResPage:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->searchEmptyPage:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->inputPage:Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->$VALUES:[Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput-object p3, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->pageName:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->pageSpm:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;
    .locals 1

    .line 28
    const-class v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;
    .locals 1

    .line 28
    sget-object v0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->$VALUES:[Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    invoke-virtual {v0}, [Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;

    return-object v0
.end method


# virtual methods
.method public getPageName()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->pageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPageSpm()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/globalsearch/utils/PageStateManager$PageState;->pageSpm:Ljava/lang/String;

    return-object v0
.end method
