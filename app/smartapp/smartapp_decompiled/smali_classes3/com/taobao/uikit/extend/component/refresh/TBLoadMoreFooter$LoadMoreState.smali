.class public final enum Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;
.super Ljava/lang/Enum;
.source "TBLoadMoreFooter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoadMoreState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;

.field public static final enum LOADING:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;

.field public static final enum NONE:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;

.field public static final enum PUSH_TO_LOAD:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;

.field public static final enum RELEASE_TO_LOAD:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 17
    new-instance v0, Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;

    const/4 v1, 0x0

    const-string v2, "NONE"

    invoke-direct {v0, v2, v1}, Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;->NONE:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;

    .line 18
    new-instance v0, Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;

    const/4 v2, 0x1

    const-string v3, "PUSH_TO_LOAD"

    invoke-direct {v0, v3, v2}, Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;->PUSH_TO_LOAD:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;

    .line 19
    new-instance v0, Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;

    const/4 v3, 0x2

    const-string v4, "RELEASE_TO_LOAD"

    invoke-direct {v0, v4, v3}, Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;->RELEASE_TO_LOAD:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;

    .line 20
    new-instance v0, Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;

    const/4 v4, 0x3

    const-string v5, "LOADING"

    invoke-direct {v0, v5, v4}, Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;->LOADING:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;

    const/4 v0, 0x4

    .line 16
    new-array v0, v0, [Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;

    sget-object v5, Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;->NONE:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;

    aput-object v5, v0, v1

    sget-object v1, Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;->PUSH_TO_LOAD:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;->RELEASE_TO_LOAD:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;->LOADING:Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;->$VALUES:[Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;

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

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;
    .locals 1

    .line 16
    const-class v0, Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;

    return-object p0
.end method

.method public static values()[Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;
    .locals 1

    .line 16
    sget-object v0, Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;->$VALUES:[Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;

    invoke-virtual {v0}, [Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/uikit/extend/component/refresh/TBLoadMoreFooter$LoadMoreState;

    return-object v0
.end method
