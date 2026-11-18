.class public Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$ScrollPickerAdapterBuilder;
.super Ljava/lang/Object;
.source "ScrollPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScrollPickerAdapterBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;

    invoke-direct {v0, p1}, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$ScrollPickerAdapterBuilder;->mAdapter:Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;

    return-void
.end method

.method private adaptiveData(Ljava/util/List;)V
    .locals 6

    .line 168
    iget-object v0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$ScrollPickerAdapterBuilder;->mAdapter:Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;

    invoke-static {v0}, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;->access$500(Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;)I

    move-result v0

    .line 169
    iget-object v1, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$ScrollPickerAdapterBuilder;->mAdapter:Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;

    invoke-static {v1}, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;->access$300(Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 170
    :goto_0
    iget-object v4, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$ScrollPickerAdapterBuilder;->mAdapter:Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;

    invoke-static {v4}, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;->access$300(Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;)I

    move-result v4

    const/4 v5, 0x0

    if-ge v3, v4, :cond_0

    .line 171
    invoke-interface {p1, v2, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    sub-int v3, v0, v1

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 175
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public build()Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$ScrollPickerAdapterBuilder;->mAdapter:Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;

    invoke-static {v0}, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;->access$400(Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$ScrollPickerAdapterBuilder;->adaptiveData(Ljava/util/List;)V

    .line 163
    iget-object v0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$ScrollPickerAdapterBuilder;->mAdapter:Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;

    invoke-virtual {v0}, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;->notifyDataSetChanged()V

    .line 164
    iget-object v0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$ScrollPickerAdapterBuilder;->mAdapter:Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;

    return-object v0
.end method

.method public selectedItemOffset(I)Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$ScrollPickerAdapterBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$ScrollPickerAdapterBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$ScrollPickerAdapterBuilder;->mAdapter:Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;

    invoke-static {v0, p1}, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;->access$302(Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;I)I

    return-object p0
.end method

.method public setDataList(Ljava/util/List;)Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$ScrollPickerAdapterBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)",
            "Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$ScrollPickerAdapterBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$ScrollPickerAdapterBuilder;->mAdapter:Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;

    invoke-static {v0}, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;->access$400(Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 132
    iget-object v0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$ScrollPickerAdapterBuilder;->mAdapter:Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;

    invoke-static {v0}, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;->access$400(Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public setDivideLineColor(Ljava/lang/String;)Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$ScrollPickerAdapterBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$ScrollPickerAdapterBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$ScrollPickerAdapterBuilder;->mAdapter:Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-static {v0, p1}, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;->access$702(Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;I)I

    return-object p0
.end method

.method public setItemViewProvider(Lcom/alibaba/genie/alarm/picker/IViewProvider;)Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$ScrollPickerAdapterBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/genie/alarm/picker/IViewProvider;",
            ")",
            "Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$ScrollPickerAdapterBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$ScrollPickerAdapterBuilder;->mAdapter:Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;

    invoke-static {v0, p1}, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;->access$602(Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;Lcom/alibaba/genie/alarm/picker/IViewProvider;)Lcom/alibaba/genie/alarm/picker/IViewProvider;

    return-object p0
.end method

.method public setOnClickListener(Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$OnClickListener;)Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$ScrollPickerAdapterBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$OnClickListener;",
            ")",
            "Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$ScrollPickerAdapterBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$ScrollPickerAdapterBuilder;->mAdapter:Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;

    invoke-static {v0, p1}, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;->access$202(Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$OnClickListener;)Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$OnClickListener;

    return-object p0
.end method

.method public setOnScrolledListener(Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$OnScrollListener;)Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$ScrollPickerAdapterBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$OnScrollListener;",
            ")",
            "Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$ScrollPickerAdapterBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$ScrollPickerAdapterBuilder;->mAdapter:Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;

    invoke-static {v0, p1}, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;->access$802(Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$OnScrollListener;)Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$OnScrollListener;

    return-object p0
.end method

.method public visibleItemNumber(I)Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$ScrollPickerAdapterBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$ScrollPickerAdapterBuilder<",
            "TT;>;"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter$ScrollPickerAdapterBuilder;->mAdapter:Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;

    invoke-static {v0, p1}, Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;->access$502(Lcom/alibaba/genie/alarm/picker/ScrollPickerAdapter;I)I

    return-object p0
.end method
