.class Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;
.super Landroid/support/v7/widget/RecyclerView$OnFlingListener;
.source "PagingScrollHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOnFlingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;


# direct methods
.method private constructor <init>(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnFlingListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$1;)V
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;-><init>(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)V

    return-void
.end method


# virtual methods
.method public onFling(II)Z
    .locals 8

    .line 139
    iget-object v0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$200(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;

    move-result-object v0

    sget-object v1, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;->NULL:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {v0}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$300(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)I

    move-result v0

    .line 150
    iget-object v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {v1}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$200(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;

    move-result-object v1

    sget-object v3, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;->VERTICAL:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$ORIENTATION;

    const v4, 0x7fffffff

    const/4 v5, 0x2

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-ne v1, v3, :cond_8

    .line 152
    iget-object p1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$400(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)I

    move-result p1

    if-ne p2, v4, :cond_1

    .line 154
    iget-object v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {v1}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$500(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    if-gez p2, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    if-lez p2, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 159
    :cond_3
    iget-object v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {v1}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$600(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)I

    move-result v1

    if-eq v1, v6, :cond_4

    .line 161
    iget-object p1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$600(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)I

    move-result p1

    add-int/lit8 v0, p1, -0x1

    const/4 p1, 0x0

    .line 167
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {v1}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$700(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)I

    move-result v1

    iget-object v3, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {v3}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$800(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v3

    if-lt v1, v3, :cond_5

    .line 168
    iget-object p2, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {p2}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$700(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)I

    move-result p2

    goto/16 :goto_3

    :cond_5
    if-ne v0, v6, :cond_6

    if-gez p2, :cond_6

    .line 170
    iget-object p2, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {p2}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$900(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 171
    iget-object p2, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {p2}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$800(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result p2

    iget-object v0, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    .line 172
    invoke-static {v0}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$700(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, p2, v0

    goto :goto_4

    :cond_6
    if-gez v0, :cond_7

    .line 174
    iget-object p2, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {p2}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$800(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result p2

    iget-object v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    .line 175
    invoke-static {v1}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$700(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr p2, v1

    iget-object v1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {v1}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$700(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)I

    move-result v1

    mul-int v0, v0, v1

    add-int/2addr v0, p2

    goto :goto_4

    .line 177
    :cond_7
    iget-object p2, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {p2}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$700(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)I

    move-result p2

    goto :goto_3

    .line 182
    :cond_8
    iget-object p2, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {p2}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$1000(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)I

    move-result p2

    if-ne p1, v4, :cond_a

    .line 184
    iget-object p1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$500(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)I

    move-result p1

    add-int/2addr v0, p1

    :cond_9
    :goto_1
    move p1, p2

    goto :goto_2

    :cond_a
    if-gez p1, :cond_b

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_b
    if-lez p1, :cond_c

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 189
    :cond_c
    iget-object p1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$600(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)I

    move-result p1

    if-eq p1, v6, :cond_9

    .line 191
    iget-object p1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$600(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)I

    move-result p1

    add-int/lit8 v0, p1, -0x1

    const/4 p1, 0x0

    .line 193
    :goto_2
    iget-object p2, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {p2}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$800(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result p2

    :goto_3
    mul-int v0, v0, p2

    .line 197
    :goto_4
    iget-object p2, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {p2}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$1100(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)Landroid/animation/ValueAnimator;

    move-result-object p2

    if-nez p2, :cond_d

    .line 198
    iget-object p2, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    new-array v1, v5, [I

    aput p1, v1, v2

    aput v0, v1, v7

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$1102(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    .line 199
    iget-object p1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$1100(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 200
    iget-object p1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$1100(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p2, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener$1;

    invoke-direct {p2, p0}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener$1;-><init>(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 218
    iget-object p1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$1100(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p2, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener$2;

    invoke-direct {p2, p0}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener$2;-><init>(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_5

    .line 238
    :cond_d
    iget-object p2, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {p2}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$1100(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)Landroid/animation/ValueAnimator;

    move-result-object p2

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 239
    iget-object p2, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {p2}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$1100(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)Landroid/animation/ValueAnimator;

    move-result-object p2

    new-array v1, v5, [I

    aput p1, v1, v2

    aput v0, v1, v7

    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 242
    :goto_5
    iget-object p1, p0, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper$MyOnFlingListener;->this$0:Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;

    invoke-static {p1}, Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;->access$1100(Lcom/alibaba/genie/shopping/PageRecyclerView/helper/PagingScrollHelper;)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return v7
.end method
