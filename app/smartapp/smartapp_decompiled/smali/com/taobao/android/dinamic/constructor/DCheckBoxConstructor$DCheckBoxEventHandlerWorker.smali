.class Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$DCheckBoxEventHandlerWorker;
.super Lcom/taobao/android/dinamic/property/DinamicEventHandlerWorker;
.source "DCheckBoxConstructor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DCheckBoxEventHandlerWorker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 310
    invoke-direct {p0}, Lcom/taobao/android/dinamic/property/DinamicEventHandlerWorker;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method synthetic constructor <init>(Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$1;)V
    .locals 0

    .line 310
    invoke-direct {p0}, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$DCheckBoxEventHandlerWorker;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public bindEventHandler(Landroid/view/View;Lcom/taobao/android/dinamic/model/DinamicParams;)V
    .locals 0

    .line 316
    invoke-virtual {p0, p1, p2}, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$DCheckBoxEventHandlerWorker;->bindSelfEvent(Landroid/view/View;Lcom/taobao/android/dinamic/model/DinamicParams;)V

    return-void
.end method

.method public bindSelfEvent(Landroid/view/View;Lcom/taobao/android/dinamic/model/DinamicParams;)V
    .locals 3

    .line 320
    sget v0, Lcom/taobao/android/dinamic/DinamicTagKey;->PROPERTY_KEY:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/taobao/android/dinamic/property/DinamicProperty;

    if-nez v0, :cond_0

    return-void

    .line 325
    :cond_0
    iget-object v1, v0, Lcom/taobao/android/dinamic/property/DinamicProperty;->eventProperty:Ljava/util/Map;

    .line 327
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "onChange"

    .line 329
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v1, p1, Landroid/support/v7/widget/AppCompatCheckBox;

    if-eqz v1, :cond_1

    .line 330
    new-instance v1, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$OnChangeListener;

    invoke-direct {v1, p0, p2, v0, p1}, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$OnChangeListener;-><init>(Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$DCheckBoxEventHandlerWorker;Lcom/taobao/android/dinamic/model/DinamicParams;Lcom/taobao/android/dinamic/property/DinamicProperty;Landroid/view/View;)V

    .line 331
    nop

    nop

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/AppCompatCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_1
    return-void
.end method
