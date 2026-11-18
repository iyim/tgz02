.class Lorg/jdom/ContentList$FilterList;
.super Ljava/util/AbstractList;
.source "ContentList.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom/ContentList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FilterList"
.end annotation


# instance fields
.field count:I

.field expected:I

.field filter:Lorg/jdom/filter/Filter;

.field private final synthetic this$0:Lorg/jdom/ContentList;


# direct methods
.method constructor <init>(Lorg/jdom/ContentList;Lorg/jdom/filter/Filter;)V
    .locals 0

    .line 549
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    const/4 p1, 0x0

    .line 534
    iput p1, p0, Lorg/jdom/ContentList$FilterList;->count:I

    const/4 p1, -0x1

    .line 537
    iput p1, p0, Lorg/jdom/ContentList$FilterList;->expected:I

    .line 550
    iput-object p2, p0, Lorg/jdom/ContentList$FilterList;->filter:Lorg/jdom/filter/Filter;

    return-void
.end method

.method private final getAdjustedIndex(I)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 687
    :goto_0
    iget-object v2, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    invoke-static {v2}, Lorg/jdom/ContentList;->access$200(Lorg/jdom/ContentList;)I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 688
    iget-object v2, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    invoke-static {v2}, Lorg/jdom/ContentList;->access$100(Lorg/jdom/ContentList;)[Lorg/jdom/Content;

    move-result-object v2

    aget-object v2, v2, v0

    .line 689
    iget-object v3, p0, Lorg/jdom/ContentList$FilterList;->filter:Lorg/jdom/filter/Filter;

    invoke-interface {v3, v2}, Lorg/jdom/filter/Filter;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_3

    .line 698
    iget-object p1, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    invoke-static {p1}, Lorg/jdom/ContentList;->access$200(Lorg/jdom/ContentList;)I

    move-result p1

    return p1

    .line 701
    :cond_3
    iget-object p1, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    invoke-static {p1}, Lorg/jdom/ContentList;->access$200(Lorg/jdom/ContentList;)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 2

    .line 563
    iget-object v0, p0, Lorg/jdom/ContentList$FilterList;->filter:Lorg/jdom/filter/Filter;

    invoke-interface {v0, p2}, Lorg/jdom/filter/Filter;->matches(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 564
    invoke-direct {p0, p1}, Lorg/jdom/ContentList$FilterList;->getAdjustedIndex(I)I

    move-result p1

    .line 565
    iget-object v0, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1, p2}, Lorg/jdom/ContentList;->add(ILjava/lang/Object;)V

    .line 566
    iget p1, p0, Lorg/jdom/ContentList$FilterList;->expected:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/jdom/ContentList$FilterList;->expected:I

    .line 567
    iget p1, p0, Lorg/jdom/ContentList$FilterList;->count:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/jdom/ContentList$FilterList;->count:I

    return-void

    .line 569
    :cond_0
    new-instance p1, Lorg/jdom/IllegalAddException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Filter won\'t allow the "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p2, "\' to be added to the list"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1

    .line 581
    invoke-direct {p0, p1}, Lorg/jdom/ContentList$FilterList;->getAdjustedIndex(I)I

    move-result p1

    .line 582
    iget-object v0, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    invoke-virtual {v0, p1}, Lorg/jdom/ContentList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4

    .line 586
    new-instance v0, Lorg/jdom/ContentList$FilterListIterator;

    iget-object v1, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    iget-object v2, p0, Lorg/jdom/ContentList$FilterList;->filter:Lorg/jdom/filter/Filter;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/jdom/ContentList$FilterListIterator;-><init>(Lorg/jdom/ContentList;Lorg/jdom/filter/Filter;I)V

    return-object v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 4

    .line 590
    new-instance v0, Lorg/jdom/ContentList$FilterListIterator;

    iget-object v1, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    iget-object v2, p0, Lorg/jdom/ContentList$FilterList;->filter:Lorg/jdom/filter/Filter;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/jdom/ContentList$FilterListIterator;-><init>(Lorg/jdom/ContentList;Lorg/jdom/filter/Filter;I)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 3

    .line 594
    new-instance v0, Lorg/jdom/ContentList$FilterListIterator;

    iget-object v1, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    iget-object v2, p0, Lorg/jdom/ContentList$FilterList;->filter:Lorg/jdom/filter/Filter;

    invoke-direct {v0, v1, v2, p1}, Lorg/jdom/ContentList$FilterListIterator;-><init>(Lorg/jdom/ContentList;Lorg/jdom/filter/Filter;I)V

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 4

    .line 604
    invoke-direct {p0, p1}, Lorg/jdom/ContentList$FilterList;->getAdjustedIndex(I)I

    move-result v0

    .line 605
    iget-object v1, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    invoke-virtual {v1, v0}, Lorg/jdom/ContentList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 606
    iget-object v2, p0, Lorg/jdom/ContentList$FilterList;->filter:Lorg/jdom/filter/Filter;

    invoke-interface {v2, v1}, Lorg/jdom/filter/Filter;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 607
    iget-object p1, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    invoke-virtual {p1, v0}, Lorg/jdom/ContentList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    .line 608
    iget v0, p0, Lorg/jdom/ContentList$FilterList;->expected:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jdom/ContentList$FilterList;->expected:I

    .line 609
    iget v0, p0, Lorg/jdom/ContentList$FilterList;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/jdom/ContentList$FilterList;->count:I

    return-object p1

    .line 612
    :cond_0
    new-instance v0, Lorg/jdom/IllegalAddException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Filter won\'t allow the "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "\' (index "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, ") to be removed"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 631
    iget-object v0, p0, Lorg/jdom/ContentList$FilterList;->filter:Lorg/jdom/filter/Filter;

    invoke-interface {v0, p2}, Lorg/jdom/filter/Filter;->matches(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 632
    invoke-direct {p0, p1}, Lorg/jdom/ContentList$FilterList;->getAdjustedIndex(I)I

    move-result v0

    .line 633
    iget-object v1, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    invoke-virtual {v1, v0}, Lorg/jdom/ContentList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 634
    iget-object v2, p0, Lorg/jdom/ContentList$FilterList;->filter:Lorg/jdom/filter/Filter;

    invoke-interface {v2, v1}, Lorg/jdom/filter/Filter;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 640
    iget-object p1, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    invoke-virtual {p1, v0, p2}, Lorg/jdom/ContentList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 641
    iget p2, p0, Lorg/jdom/ContentList$FilterList;->expected:I

    add-int/lit8 p2, p2, 0x2

    iput p2, p0, Lorg/jdom/ContentList$FilterList;->expected:I

    return-object p1

    .line 635
    :cond_0
    new-instance p2, Lorg/jdom/IllegalAddException;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Filter won\'t allow the "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "\' (index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, ") to be removed"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 644
    :cond_1
    new-instance v0, Lorg/jdom/IllegalAddException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Filter won\'t allow index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, " to be set to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/jdom/IllegalAddException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 3

    .line 664
    iget v0, p0, Lorg/jdom/ContentList$FilterList;->expected:I

    iget-object v1, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    invoke-static {v1}, Lorg/jdom/ContentList;->access$000(Lorg/jdom/ContentList;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 665
    iget v0, p0, Lorg/jdom/ContentList$FilterList;->count:I

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 668
    iput v0, p0, Lorg/jdom/ContentList$FilterList;->count:I

    .line 669
    :goto_0
    iget-object v1, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    invoke-virtual {v1}, Lorg/jdom/ContentList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 670
    iget-object v1, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    invoke-static {v1}, Lorg/jdom/ContentList;->access$100(Lorg/jdom/ContentList;)[Lorg/jdom/Content;

    move-result-object v1

    aget-object v1, v1, v0

    .line 671
    iget-object v2, p0, Lorg/jdom/ContentList$FilterList;->filter:Lorg/jdom/filter/Filter;

    invoke-interface {v2, v1}, Lorg/jdom/filter/Filter;->matches(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 672
    iget v1, p0, Lorg/jdom/ContentList$FilterList;->count:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/jdom/ContentList$FilterList;->count:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 675
    :cond_2
    iget-object v0, p0, Lorg/jdom/ContentList$FilterList;->this$0:Lorg/jdom/ContentList;

    invoke-static {v0}, Lorg/jdom/ContentList;->access$000(Lorg/jdom/ContentList;)I

    move-result v0

    iput v0, p0, Lorg/jdom/ContentList$FilterList;->expected:I

    .line 676
    iget v0, p0, Lorg/jdom/ContentList$FilterList;->count:I

    return v0
.end method
