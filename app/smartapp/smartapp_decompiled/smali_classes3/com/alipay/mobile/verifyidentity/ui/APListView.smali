.class public Lcom/alipay/mobile/verifyidentity/ui/APListView;
.super Landroid/widget/ListView;
.source "APListView.java"

# interfaces
.implements Lcom/alipay/mobile/verifyidentity/ui/APViewInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 10
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 11
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "hackbyte "

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 30
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    .line 33
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/APListView;->postInvalidate()V

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .line 25
    invoke-static {p1}, Lcom/alipay/mobile/verifyidentity/ui/APViewEventHelper;->wrapItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
