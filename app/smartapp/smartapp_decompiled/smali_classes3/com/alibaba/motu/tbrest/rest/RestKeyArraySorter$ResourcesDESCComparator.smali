.class Lcom/alibaba/motu/tbrest/rest/RestKeyArraySorter$ResourcesDESCComparator;
.super Ljava/lang/Object;
.source "RestKeyArraySorter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/motu/tbrest/rest/RestKeyArraySorter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResourcesDESCComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/motu/tbrest/rest/RestKeyArraySorter;


# direct methods
.method private constructor <init>(Lcom/alibaba/motu/tbrest/rest/RestKeyArraySorter;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/alibaba/motu/tbrest/rest/RestKeyArraySorter$ResourcesDESCComparator;->this$0:Lcom/alibaba/motu/tbrest/rest/RestKeyArraySorter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/motu/tbrest/rest/RestKeyArraySorter;Lcom/alibaba/motu/tbrest/rest/RestKeyArraySorter$1;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/alibaba/motu/tbrest/rest/RestKeyArraySorter$ResourcesDESCComparator;-><init>(Lcom/alibaba/motu/tbrest/rest/RestKeyArraySorter;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 48
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/motu/tbrest/rest/RestKeyArraySorter$ResourcesDESCComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 53
    invoke-static {p1}, Lcom/alibaba/motu/tbrest/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    invoke-static {p2}, Lcom/alibaba/motu/tbrest/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    mul-int/lit8 p1, p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
