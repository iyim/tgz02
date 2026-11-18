.class public Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;
.super Landroid/widget/FrameLayout;
.source "SystemIconBarView.java"


# static fields
.field private static final MAX_BATTERY_LEN:I = 0x15

.field private static final TAG:Ljava/lang/String; = "SystemIconBarView"

.field public static final WEEKS_DATES:[Ljava/lang/String;

.field private static final WIFI_LEVELS:[I


# instance fields
.field private mBatteryCharginIcon:Landroid/widget/ImageView;

.field private mBatteryFill:Landroid/view/View;

.field private mBatteryIcon:Landroid/view/View;

.field private mBatteryValue:Landroid/widget/TextView;

.field private mBluetoothIcon:Landroid/widget/ImageView;

.field private mChild:Landroid/view/View;

.field private mConnected:Z

.field private mDate:Landroid/widget/TextView;

.field private mEyeIcon:Landroid/widget/ImageView;

.field private mMoomModeIcon:Landroid/widget/ImageView;

.field private mNoVocieIcon:Landroid/widget/ImageView;

.field private mTime:Landroid/widget/TextView;

.field private mWifiIcon:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "\u661f\u671f\u65e5"

    const-string v1, "\u661f\u671f\u4e00"

    const-string v2, "\u661f\u671f\u4e8c"

    const-string v3, "\u661f\u671f\u4e09"

    const-string v4, "\u661f\u671f\u56db"

    const-string v5, "\u661f\u671f\u4e94"

    const-string v6, "\u661f\u671f\u516d"

    .line 28
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->WEEKS_DATES:[Ljava/lang/String;

    const/4 v0, 0x5

    .line 30
    new-array v0, v0, [I

    sget v1, Lcom/alibaba/ailabs/systemui/R$drawable;->wifi_error:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/alibaba/ailabs/systemui/R$drawable;->wifi4:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/alibaba/ailabs/systemui/R$drawable;->wifi3:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/alibaba/ailabs/systemui/R$drawable;->wifi2:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lcom/alibaba/ailabs/systemui/R$drawable;->wifi1:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sput-object v0, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->WIFI_LEVELS:[I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->initView(Landroid/content/Context;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private getDate()Ljava/lang/String;
    .locals 2

    .line 153
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 154
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x7

    .line 156
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 160
    :cond_0
    sget-object v1, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->WEEKS_DATES:[Ljava/lang/String;

    aget-object v0, v1, v0

    return-object v0
.end method

.method private getTime()Ljava/lang/String;
    .locals 3

    .line 145
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 147
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "hh:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initView(Landroid/content/Context;Z)V
    .locals 1

    .line 59
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/alibaba/ailabs/systemui/R$layout;->layout_sys_icons:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 60
    sget p1, Lcom/alibaba/ailabs/systemui/R$id;->wifi_img:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->mWifiIcon:Landroid/widget/ImageView;

    .line 61
    sget p1, Lcom/alibaba/ailabs/systemui/R$id;->bluetooth_img:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->mBluetoothIcon:Landroid/widget/ImageView;

    .line 62
    sget p1, Lcom/alibaba/ailabs/systemui/R$id;->batter_img:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->mBatteryIcon:Landroid/view/View;

    .line 63
    sget p1, Lcom/alibaba/ailabs/systemui/R$id;->batter_fill:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->mBatteryFill:Landroid/view/View;

    .line 64
    sget p1, Lcom/alibaba/ailabs/systemui/R$id;->charging_img:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->mBatteryCharginIcon:Landroid/widget/ImageView;

    .line 65
    iget-object p1, p0, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->mBatteryIcon:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 66
    sget p1, Lcom/alibaba/ailabs/systemui/R$id;->night:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->mMoomModeIcon:Landroid/widget/ImageView;

    .line 67
    iget-object p1, p0, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->mMoomModeIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 68
    sget p1, Lcom/alibaba/ailabs/systemui/R$id;->eye:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->mEyeIcon:Landroid/widget/ImageView;

    .line 69
    iget-object p1, p0, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->mEyeIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 70
    iget-object p1, p0, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->mBatteryCharginIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 71
    sget p1, Lcom/alibaba/ailabs/systemui/R$id;->date:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->mDate:Landroid/widget/TextView;

    .line 72
    sget p1, Lcom/alibaba/ailabs/systemui/R$id;->time:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->mTime:Landroid/widget/TextView;

    .line 73
    sget p1, Lcom/alibaba/ailabs/systemui/R$id;->child:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->mChild:Landroid/view/View;

    .line 74
    sget p1, Lcom/alibaba/ailabs/systemui/R$id;->no_voice:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->mNoVocieIcon:Landroid/widget/ImageView;

    .line 75
    iget-object p1, p0, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->mNoVocieIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 76
    iget-object p1, p0, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->mChild:Landroid/view/View;

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 77
    iget-object p1, p0, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->mBluetoothIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 78
    sget p1, Lcom/alibaba/ailabs/systemui/R$id;->batteryTv:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->mBatteryValue:Landroid/widget/TextView;

    .line 79
    iget-object p1, p0, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->mBatteryValue:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-direct {p0}, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->getTime()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->updateTime(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public udpateBattery(ZI)V
    .locals 2

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateBattery batteryPct:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemIconBarView"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez p2, :cond_0

    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->mBatteryCharginIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    iget-object p1, p0, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->mBatteryIcon:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 106
    iget-object p1, p0, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->mBatteryValue:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p2}, Ljava/math/BigDecimal;-><init>(I)V

    new-instance v0, Ljava/math/BigDecimal;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    .line 108
    invoke-virtual {p1, v0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p1

    new-instance v0, Ljava/math/BigDecimal;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(I)V

    const/4 v1, 0x2

    .line 109
    invoke-virtual {p1, v0, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigDecimal;->intValue()I

    move-result p1

    .line 110
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->mBatteryFill:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 111
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 112
    iget-object p1, p0, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->mBatteryFill:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p1, 0xa

    if-gt p2, p1, :cond_2

    .line 114
    iget-object p1, p0, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->mBatteryFill:Landroid/view/View;

    const-string p2, "#eb4d35"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    :cond_2
    const/16 p1, 0x14

    if-gt p2, p1, :cond_3

    .line 117
    iget-object p1, p0, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->mBatteryFill:Landroid/view/View;

    const-string p2, "#f6bc3f"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1

    :cond_3
    if-le p2, p1, :cond_4

    .line 119
    iget-object p1, p0, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->mBatteryFill:Landroid/view/View;

    const-string p2, "#35c15e"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public updateBlueTooth(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 v2, 0x1

    .line 125
    iput-boolean v2, p0, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->mConnected:Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 127
    iput-boolean v0, p0, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->mConnected:Z

    :cond_1
    :goto_0
    if-eq p1, v1, :cond_3

    const/16 v1, 0x17

    if-ne p1, v1, :cond_2

    goto :goto_1

    .line 133
    :cond_2
    iget-boolean p1, p0, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->mConnected:Z

    if-nez p1, :cond_4

    .line 134
    iget-object p1, p0, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->mBluetoothIcon:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 131
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->mBluetoothIcon:Landroid/widget/ImageView;

    sget v1, Lcom/alibaba/ailabs/systemui/R$drawable;->blue:I

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 132
    iget-object p1, p0, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->mBluetoothIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method public updateDnd(Z)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public updateEyeMode(Z)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->mEyeIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public updateMoonMode(Z)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->mMoomModeIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public updateTime(Ljava/lang/String;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->mTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object p1, p0, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->mDate:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->getDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateVolume(I)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->mNoVocieIcon:Landroid/widget/ImageView;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public updateWif(ZI)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 85
    sget-object p1, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->WIFI_LEVELS:[I

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-le p2, v1, :cond_0

    .line 86
    array-length p1, p1

    add-int/lit8 p2, p1, -0x1

    :cond_0
    if-gez p2, :cond_1

    const/4 p2, 0x0

    .line 91
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->mWifiIcon:Landroid/widget/ImageView;

    sget-object v1, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->WIFI_LEVELS:[I

    aget p2, v1, p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    iget-object p1, p0, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->mWifiIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 94
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->mWifiIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 95
    iget-object p1, p0, Lcom/alibaba/ailabs/systemui/view/SystemIconBarView;->mWifiIcon:Landroid/widget/ImageView;

    sget p2, Lcom/alibaba/ailabs/systemui/R$drawable;->wifi_no_sigal:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method
