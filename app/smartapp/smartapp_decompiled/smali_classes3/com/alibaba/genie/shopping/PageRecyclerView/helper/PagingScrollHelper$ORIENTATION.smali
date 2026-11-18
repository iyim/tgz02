.class final enum Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;
.super Ljava/lang/Enum;
.source "PagingScrollHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ORIENTATION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;

.field public static final enum HORIZONTAL:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;

.field public static final enum NULL:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;

.field public static final enum VERTICAL:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 47
    new-instance v0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;

    const/4 v1, 0x0

    const-string v2, "HORIZONTAL"

    invoke-direct {v0, v2, v1}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;->HORIZONTAL:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;

    new-instance v0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;

    const/4 v2, 0x1

    const-string v3, "VERTICAL"

    invoke-direct {v0, v3, v2}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;->VERTICAL:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;

    new-instance v0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;

    const/4 v3, 0x2

    const-string v4, "NULL"

    invoke-direct {v0, v4, v3}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;->NULL:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;

    const/4 v0, 0x3

    .line 46
    new-array v0, v0, [Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;

    sget-object v4, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;->HORIZONTAL:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;

    aput-object v4, v0, v1

    sget-object v1, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;->VERTICAL:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;->NULL:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;->$VALUES:[Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;

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

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;
    .locals 1

    .line 46
    const-class v0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;
    .locals 1

    .line 46
    sget-object v0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;->$VALUES:[Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;

    invoke-virtual {v0}, [Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;

    return-object v0
.end method
