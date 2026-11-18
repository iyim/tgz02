.class public Lcom/alibaba/ailabs/childmode/ui/widget/SettingSwitch;
.super Landroid/widget/Switch;
.source "SettingSwitch.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/SettingSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x15
    .end annotation

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private modifySwitchWidth()V
    .locals 4

    .line 51
    :try_start_0
    const-class v0, Landroid/widget/Switch;

    const-string v1, "mSwitchWidth"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 54
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/SettingSwitch;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alibaba/ailabs/genie/setting/R$dimen;->setting_switch_thumb_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_0

    .line 56
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .locals 0

    .line 42
    invoke-super {p0, p1, p2}, Landroid/widget/Switch;->onMeasure(II)V

    .line 43
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/SettingSwitch;->modifySwitchWidth()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
