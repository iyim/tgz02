.class public Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;
.super Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity;
.source "QrcodePayActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity<",
        "Lcom/alibaba/ailabs/genie/commonpay/qrcode/IPayMvpView;",
        "Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter;",
        ">;"
    }
.end annotation


# static fields
.field private static final DELAY_MILLS_SHORT:I = 0x3e8

.field private static final DELAY_TIME_OUT_CODES:I = 0x2bf20

.field private static TAG:Ljava/lang/String; = "commonPay"

.field private static final WHAT_GET_RESULT_REQUEST_TIME_OUT:I = -0x3eb

.field private static final WHAT_QUERY_PAY_STATUS:I = 0x7d1


# instance fields
.field private fromAmpe:Z

.field private hasPlay:Z

.field private img_pay_error_bg:Landroid/widget/ImageView;

.field private img_pay_qrcode:Landroid/widget/ImageView;

.field private img_pay_success_count_progress:Landroid/widget/ImageView;

.field private isPaySuccess:Z

.field private mASRCommandListener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

.field protected mAliTVASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

.field private mAmount:J

.field private mAmountYuan:Ljava/lang/String;

.field private mAppId:Ljava/lang/String;

.field private mBaseDialog:Lcom/alibaba/ailabs/genie/commonpay/dialog/BaseDialog;

.field private mDeviceId:Ljava/lang/String;

.field private mGood_detail_name_error_layout:Landroid/widget/LinearLayout;

.field private mGood_detail_name_layout:Landroid/widget/LinearLayout;

.field private volatile mHasGetResult:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMerchantName:Ljava/lang/String;

.field private mOutItemName:Ljava/lang/String;

.field private mOutOrderId:Ljava/lang/String;

.field private mPay_error_mount_layout:Landroid/widget/LinearLayout;

.field private mQrcode_pay_error_layout:Landroid/widget/FrameLayout;

.field private mQrcode_pay_layout:Landroid/widget/LinearLayout;

.field private mQrcode_pay_success_layout:Landroid/widget/FrameLayout;

.field private volatile mQueryStatusTimeout:Z

.field private mSellerId:J

.field private mSeller_name_error_layout:Landroid/widget/LinearLayout;

.field private mSeller_name_layout:Landroid/widget/LinearLayout;

.field private payErrorCode:I

.field private payErrorMsg:Ljava/lang/String;

.field private paySuccessData:Lcom/alibaba/fastjson/JSONObject;

.field private pay_success_bg_img:Landroid/widget/ImageView;

.field private tv_good_detail_name:Landroid/widget/TextView;

.field private tv_good_detail_name_error:Landroid/widget/TextView;

.field private tv_pay_error_info:Landroid/widget/TextView;

.field private tv_pay_error_info_tips:Landroid/widget/TextView;

.field private tv_pay_mount:Landroid/widget/TextView;

.field private tv_pay_mount_error:Landroid/widget/TextView;

.field private tv_pay_success_count_index:Landroid/widget/TextView;

.field private tv_seller_name:Landroid/widget/TextView;

.field private tv_seller_name_error:Landroid/widget/TextView;

.field private uuid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 3

    .line 63
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mAliTVASRManager:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRClient;

    .line 66
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mASRCommandListener:Lcom/alibaba/ailabs/genie/assistant/sdk/asr/OnASRCommandListener;

    const/4 v1, 0x0

    .line 83
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->hasPlay:Z

    .line 94
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->isPaySuccess:Z

    .line 95
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object v2, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->paySuccessData:Lcom/alibaba/fastjson/JSONObject;

    const/4 v2, -0x2

    .line 97
    iput v2, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->payErrorCode:I

    .line 100
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mHasGetResult:Z

    .line 102
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mQueryStatusTimeout:Z

    .line 104
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-void
.end method

.method static synthetic access$002(Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;Lcom/alibaba/ailabs/genie/commonpay/dialog/BaseDialog;)Lcom/alibaba/ailabs/genie/commonpay/dialog/BaseDialog;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mBaseDialog:Lcom/alibaba/ailabs/genie/commonpay/dialog/BaseDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;)Landroid/widget/TextView;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->tv_pay_success_count_index:Landroid/widget/TextView;

    return-object p0
.end method

.method private addCommonProperties(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1043
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfoStr()Ljava/lang/String;

    move-result-object v0

    const-string v1, "authinfo"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static changeF2Y(J)Ljava/lang/String;
    .locals 1

    .line 1039
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    new-instance p1, Ljava/math/BigDecimal;

    const/16 v0, 0x64

    invoke-direct {p1, v0}, Ljava/math/BigDecimal;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private paySuccess()V
    .locals 8

    .line 654
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mHasGetResult:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 657
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mHasGetResult:Z

    .line 659
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mBaseHandler:Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity$BaseHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity$BaseHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 661
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mQrcode_pay_layout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 662
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mQrcode_pay_error_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 664
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mQrcode_pay_success_layout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const-string v0, "pay_success.mp3"

    .line 666
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->playStatus(Ljava/lang/String;)V

    .line 669
    new-instance v0, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 670
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/request/RequestOptions;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    .line 671
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/commonpay/R$mipmap;->pay_qrcode_success_bg:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    new-instance v2, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity$3;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity$3;-><init>(Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;)V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 687
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->pay_success_bg_img:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 690
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroid/app/Activity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/commonpay/R$mipmap;->pay_success_loading:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    new-instance v2, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity$4;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity$4;-><init>(Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;)V

    invoke-virtual {v1, v2}, Lcom/bumptech/glide/RequestBuilder;->listener(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    .line 706
    invoke-virtual {v1, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->img_pay_success_count_progress:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 709
    new-instance v0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity$5;

    const-wide/16 v4, 0x1388

    const-wide/16 v6, 0x3e8

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity$5;-><init>(Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;JJ)V

    .line 720
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity$5;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private playStatus(Ljava/lang/String;)V
    .locals 8

    .line 880
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->hasPlay:Z

    if-eqz v0, :cond_0

    return-void

    .line 884
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    .line 885
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 887
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 890
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    .line 891
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity$6;

    invoke-direct {v1, p0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity$6;-><init>(Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 897
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 898
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    const/4 p1, 0x1

    .line 900
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->hasPlay:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 902
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private processData()V
    .locals 20

    move-object/from16 v1, p0

    const-string v2, "common_qrcode_pay_qrcode_page"

    const-string v3, "type"

    const/4 v4, 0x0

    .line 209
    iput-boolean v4, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mHasGetResult:Z

    const/16 v5, 0xa

    .line 212
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 213
    invoke-direct {v1, v0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->addCommonProperties(Ljava/util/Map;)V

    const-string v6, "launch qrcode pay page, come in"

    .line 214
    invoke-interface {v0, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "spm-cnt"

    const-string v7, "a2i1i.b43891876"

    .line 215
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x0

    .line 216
    invoke-static {v2, v6, v0}, Lcom/alibaba/ailabs/genie/commonpay/utils/UTNotify;->onPageHitEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 218
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 222
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v6, "paySuccessData"

    const-string v7, "isPaySuccess"

    const-string v8, "a2i1i.b43891792"

    const-string v9, "spm"

    const-string v11, "null"

    if-eqz v0, :cond_8

    const-string v12, "data"

    .line 228
    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "fromAmpe"

    .line 232
    invoke-virtual {v0, v13, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->fromAmpe:Z

    .line 236
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v13, ""

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 237
    new-array v0, v0, [Lcom/alibaba/fastjson/parser/Feature;

    sget-object v14, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    aput-object v14, v0, v4

    invoke-static {v12, v0}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v12, "sellerId"

    .line 240
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide v12

    iput-wide v12, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mSellerId:J

    const-string v12, "content"

    .line 241
    invoke-virtual {v0, v12}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "sign"

    .line 243
    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    move-object v0, v13

    move-object v12, v0

    .line 247
    :goto_1
    sget-object v13, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "call pay activity; sellerId="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v19, v11

    iget-wide v10, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mSellerId:J

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "; content="

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "; sign="

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    sget-object v13, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mSellerId:J

    invoke-virtual {v14, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v13, v4}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget-wide v4, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mSellerId:J

    const-wide/16 v13, 0x0

    const/16 v15, 0x8

    cmp-long v17, v4, v13

    if-lez v17, :cond_3

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 253
    iget-object v4, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mQrcode_pay_error_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v15}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 254
    iget-object v4, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mQrcode_pay_success_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v15}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 255
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->getUuid()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->uuid:Ljava/lang/String;

    .line 257
    sget-object v4, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "get Qrcode; sellerId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mSellerId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "; uuid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->uuid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->getPresenter()Lcom/alibaba/ailabs/genie/commonpay/mvp/IMvpPresenter;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter;

    iget-wide v14, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mSellerId:J

    iget-object v4, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->uuid:Ljava/lang/String;

    move-object/from16 v16, v12

    move-object/from16 v17, v0

    move-object/from16 v18, v4

    invoke-virtual/range {v13 .. v18}, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter;->createOrder(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :try_start_1
    new-instance v4, Ljava/util/HashMap;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 263
    invoke-direct {v1, v4}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->addCommonProperties(Ljava/util/Map;)V

    const-string v5, "launch qrcode pay page, param check success, begin create order"

    .line 264
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "info"

    .line 265
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sellerId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mSellerId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v12, :cond_1

    goto :goto_2

    :cond_1
    move-object/from16 v12, v19

    :goto_2
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    move-object/from16 v0, v19

    :goto_3
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    invoke-interface {v4, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "common_qrcode_pay_param_check_success"

    .line 267
    invoke-static {v0, v2, v4}, Lcom/alibaba/ailabs/genie/commonpay/utils/UTNotify;->onCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_8

    :catch_1
    move-exception v0

    .line 269
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_8

    .line 272
    :cond_3
    iget-object v4, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mQrcode_pay_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 273
    iget-object v4, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mQrcode_pay_success_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v15}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 275
    iget-object v4, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mQrcode_pay_error_layout:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 276
    iget-object v4, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->img_pay_error_bg:Landroid/widget/ImageView;

    sget v13, Lcom/alibaba/ailabs/genie/commonpay/R$mipmap;->pay_qrcode_error_bg:I

    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 277
    iget-object v4, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->tv_pay_error_info:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 278
    iget-object v4, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->tv_pay_error_info:Landroid/widget/TextView;

    sget v13, Lcom/alibaba/ailabs/genie/commonpay/R$string;->tv_not_get_payinfo:I

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setText(I)V

    .line 279
    iget-object v4, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->tv_pay_error_info_tips:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 280
    iget-object v4, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->tv_pay_error_info_tips:Landroid/widget/TextView;

    sget v13, Lcom/alibaba/ailabs/genie/commonpay/R$string;->tv_not_get_payinfo_tips:I

    invoke-virtual {v4, v13}, Landroid/widget/TextView;->setText(I)V

    .line 282
    iget-object v4, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mPay_error_mount_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 284
    iget-object v4, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mGood_detail_name_error_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 285
    iget-object v4, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mSeller_name_error_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 287
    iput-boolean v5, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->isPaySuccess:Z

    const/4 v4, -0x1

    .line 288
    iput v4, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->payErrorCode:I

    const-string v4, "param is error"

    .line 289
    iput-object v4, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->payErrorMsg:Ljava/lang/String;

    .line 292
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 293
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 294
    iget-boolean v5, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->isPaySuccess:Z

    invoke-virtual {v4, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 295
    iget-object v5, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->paySuccessData:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_4
    move-object/from16 v5, v19

    :goto_4
    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    iget v5, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->payErrorCode:I

    const-string v6, "payErrorCode"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 297
    iget-object v5, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->payErrorMsg:Ljava/lang/String;

    const-string v6, "payErrorMsg"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v5, -0x1

    .line 299
    invoke-virtual {v1, v5, v4}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->setResult(ILandroid/content/Intent;)V

    .line 303
    :cond_5
    :try_start_2
    new-instance v4, Ljava/util/HashMap;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    .line 304
    invoke-direct {v1, v4}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->addCommonProperties(Ljava/util/Map;)V

    const-string v5, "launch qrcode pay page, param check failure"

    .line 305
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "info"

    .line 306
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sellerId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mSellerId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v12, :cond_6

    goto :goto_5

    :cond_6
    move-object/from16 v12, v19

    :goto_5
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_7

    goto :goto_6

    :cond_7
    move-object/from16 v0, v19

    :goto_6
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    invoke-interface {v4, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "common_qrcode_pay_param_check_failure"

    .line 308
    invoke-static {v0, v2, v4}, Lcom/alibaba/ailabs/genie/commonpay/utils/UTNotify;->onCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    .line 310
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    :cond_8
    move-object/from16 v19, v11

    .line 318
    iput-boolean v4, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->isPaySuccess:Z

    const/4 v0, -0x1

    .line 319
    iput v0, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->payErrorCode:I

    const-string v0, "intent is null"

    .line 320
    iput-object v0, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->payErrorMsg:Ljava/lang/String;

    .line 323
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 324
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 325
    iget-boolean v4, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->isPaySuccess:Z

    invoke-virtual {v0, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 326
    iget-object v4, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->paySuccessData:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v11

    goto :goto_7

    :cond_9
    move-object/from16 v11, v19

    :goto_7
    invoke-virtual {v0, v6, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    iget v4, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->payErrorCode:I

    const-string v5, "payErrorCode"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 328
    iget-object v4, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->payErrorMsg:Ljava/lang/String;

    const-string v5, "payErrorMsg"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, -0x1

    .line 330
    invoke-virtual {v1, v4, v0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->setResult(ILandroid/content/Intent;)V

    .line 334
    :cond_a
    :try_start_3
    new-instance v0, Ljava/util/HashMap;

    const/16 v4, 0xa

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    .line 335
    invoke-direct {v1, v0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->addCommonProperties(Ljava/util/Map;)V

    const-string v4, "launch qrcode pay page, intent is null"

    .line 336
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    invoke-interface {v0, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "common_qrcode_pay_param_check_failure"

    .line 338
    invoke-static {v3, v2, v0}, Lcom/alibaba/ailabs/genie/commonpay/utils/UTNotify;->onCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_8

    :catch_3
    move-exception v0

    .line 340
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_8
    const/4 v2, 0x0

    .line 344
    iput-boolean v2, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->hasPlay:Z

    return-void
.end method

.method private queryPayStatus()V
    .locals 4

    const/4 v0, 0x0

    .line 418
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mQueryStatusTimeout:Z

    .line 419
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mBaseHandler:Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity$BaseHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity$BaseHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 422
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x7d1

    .line 423
    iput v1, v0, Landroid/os/Message;->what:I

    .line 425
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mBaseHandler:Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity$BaseHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity$BaseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 429
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, -0x3eb

    .line 430
    iput v1, v0, Landroid/os/Message;->what:I

    .line 431
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mBaseHandler:Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity$BaseHandler;

    const-wide/32 v2, 0x2bf20

    invoke-virtual {v1, v0, v2, v3}, Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity$BaseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/alibaba/ailabs/genie/commonpay/mvp/IMvpPresenter;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->createPresenter()Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter;
    .locals 1

    .line 876
    new-instance v0, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter;-><init>()V

    return-object v0
.end method

.method protected getContextData(Lcom/alibaba/ailabs/genie/assistant/sdk/asr/AppContextData;)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public getUuid()Ljava/lang/String;
    .locals 1

    .line 1031
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/UserDataProvider;->getUUID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleBaseMessage(Landroid/os/Message;)V
    .locals 4

    if-eqz p1, :cond_5

    .line 438
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, -0x3eb

    const-string v1, "; outOrderId="

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d1

    if-eq p1, v0, :cond_0

    goto/16 :goto_2

    .line 441
    :cond_0
    sget-object p1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message query pay status, sellerId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mSellerId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mOutOrderId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; uuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->uuid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->getPresenter()Lcom/alibaba/ailabs/genie/commonpay/mvp/IMvpPresenter;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter;

    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mSellerId:J

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mOutOrderId:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->uuid:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/alibaba/ailabs/genie/commonpay/presenter/PayPresenter;->queryPaymentStatus(JLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 445
    :cond_1
    sget-object p1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message query timeout, appId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mOutOrderId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; mDeviceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 447
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mQueryStatusTimeout:Z

    const-string p1, "pay_failed.mp3"

    .line 449
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->playStatus(Ljava/lang/String;)V

    .line 451
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mBaseHandler:Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity$BaseHandler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity$BaseHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 454
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mQrcode_pay_layout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 455
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mQrcode_pay_error_layout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 456
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->img_pay_error_bg:Landroid/widget/ImageView;

    sget v2, Lcom/alibaba/ailabs/genie/commonpay/R$mipmap;->pay_qrcode_timeout_bg:I

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 457
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->tv_pay_error_info:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 458
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->tv_pay_error_info:Landroid/widget/TextView;

    sget v2, Lcom/alibaba/ailabs/genie/commonpay/R$string;->tv_get_payinfo_timeout:I

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 459
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->tv_pay_error_info_tips:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 462
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mPay_error_mount_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 463
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->tv_pay_mount_error:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mAmountYuan:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mGood_detail_name_error_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 466
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->tv_good_detail_name_error:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mOutItemName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mMerchantName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 469
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mSeller_name_error_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 470
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->tv_seller_name_error:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mMerchantName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 472
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mSeller_name_error_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 475
    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->isPaySuccess:Z

    const/4 p1, -0x3

    .line 476
    iput p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->payErrorCode:I

    const-string p1, "query order status time out"

    .line 477
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->payErrorMsg:Ljava/lang/String;

    .line 480
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 481
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 482
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->isPaySuccess:Z

    const-string v1, "isPaySuccess"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 483
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->paySuccessData:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v0, "null"

    :goto_1
    const-string v1, "paySuccessData"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    iget v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->payErrorCode:I

    const-string v1, "payErrorCode"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 485
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->payErrorMsg:Ljava/lang/String;

    const-string v1, "payErrorMsg"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 487
    invoke-virtual {p0, v0, p1}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->setResult(ILandroid/content/Intent;)V

    .line 491
    :cond_4
    :try_start_0
    new-instance p1, Ljava/util/HashMap;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    const-string v0, "authInfo"

    .line 492
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfoStr()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "type"

    const-string v1, "qrcode pay timeout"

    .line 493
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "spm"

    const-string v1, "a2i1i.b43891792"

    .line 494
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "common_qrcode_pay_timeout"

    const-string v1, "common_qrcode_pay_qrcode_page"

    .line 495
    invoke-static {v0, v1, p1}, Lcom/alibaba/ailabs/genie/commonpay/utils/UTNotify;->onCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 497
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_2
    return-void
.end method

.method public isNeedHandler()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 112
    invoke-super {p0, p1}, Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 113
    sget-object p1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate is called ----------11"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 116
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x5

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Landroid/view/Window;->setLayout(II)V

    .line 120
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v2, 0x50

    .line 121
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 124
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 125
    sget-object p1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate is called ----------22"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    sget p1, Lcom/alibaba/ailabs/genie/commonpay/R$layout;->activity_qrcode_common_pay:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->setContentView(I)V

    .line 129
    sget-object p1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate is called ----------33"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    sget p1, Lcom/alibaba/ailabs/genie/commonpay/R$id;->qrcode_pay_layout:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mQrcode_pay_layout:Landroid/widget/LinearLayout;

    .line 132
    sget p1, Lcom/alibaba/ailabs/genie/commonpay/R$id;->qrcode_pay_error_layout:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mQrcode_pay_error_layout:Landroid/widget/FrameLayout;

    .line 133
    sget p1, Lcom/alibaba/ailabs/genie/commonpay/R$id;->good_detail_name_error_layout:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mGood_detail_name_error_layout:Landroid/widget/LinearLayout;

    .line 134
    sget p1, Lcom/alibaba/ailabs/genie/commonpay/R$id;->seller_name_error_layout:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mSeller_name_error_layout:Landroid/widget/LinearLayout;

    .line 135
    sget p1, Lcom/alibaba/ailabs/genie/commonpay/R$id;->tv_pay_error_mount_layout:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mPay_error_mount_layout:Landroid/widget/LinearLayout;

    .line 137
    sget p1, Lcom/alibaba/ailabs/genie/commonpay/R$id;->qrcode_pay_success_layout:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mQrcode_pay_success_layout:Landroid/widget/FrameLayout;

    .line 139
    sget p1, Lcom/alibaba/ailabs/genie/commonpay/R$id;->good_detail_name_layout:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mGood_detail_name_layout:Landroid/widget/LinearLayout;

    .line 140
    sget p1, Lcom/alibaba/ailabs/genie/commonpay/R$id;->seller_name_layout:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mSeller_name_layout:Landroid/widget/LinearLayout;

    .line 142
    sget p1, Lcom/alibaba/ailabs/genie/commonpay/R$id;->tv_pay_error_info:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->tv_pay_error_info:Landroid/widget/TextView;

    .line 143
    sget p1, Lcom/alibaba/ailabs/genie/commonpay/R$id;->tv_pay_error_info_tips:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->tv_pay_error_info_tips:Landroid/widget/TextView;

    .line 144
    sget p1, Lcom/alibaba/ailabs/genie/commonpay/R$id;->pay_error_bg_img:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->img_pay_error_bg:Landroid/widget/ImageView;

    .line 145
    sget p1, Lcom/alibaba/ailabs/genie/commonpay/R$id;->pay_success_bg_img:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->pay_success_bg_img:Landroid/widget/ImageView;

    .line 146
    sget p1, Lcom/alibaba/ailabs/genie/commonpay/R$id;->img_pay_success_count_progress:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->img_pay_success_count_progress:Landroid/widget/ImageView;

    .line 148
    sget p1, Lcom/alibaba/ailabs/genie/commonpay/R$id;->pay_mount_error:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->tv_pay_mount_error:Landroid/widget/TextView;

    .line 149
    sget p1, Lcom/alibaba/ailabs/genie/commonpay/R$id;->good_detail_name_error:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->tv_good_detail_name_error:Landroid/widget/TextView;

    .line 150
    sget p1, Lcom/alibaba/ailabs/genie/commonpay/R$id;->seller_name_error:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->tv_seller_name_error:Landroid/widget/TextView;

    .line 152
    sget p1, Lcom/alibaba/ailabs/genie/commonpay/R$id;->pay_mount:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->tv_pay_mount:Landroid/widget/TextView;

    .line 153
    sget p1, Lcom/alibaba/ailabs/genie/commonpay/R$id;->good_detail_name:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->tv_good_detail_name:Landroid/widget/TextView;

    .line 154
    sget p1, Lcom/alibaba/ailabs/genie/commonpay/R$id;->seller_name:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->tv_seller_name:Landroid/widget/TextView;

    .line 155
    sget p1, Lcom/alibaba/ailabs/genie/commonpay/R$id;->img_qrcode:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->img_pay_qrcode:Landroid/widget/ImageView;

    .line 157
    sget p1, Lcom/alibaba/ailabs/genie/commonpay/R$id;->tv_pay_success_count_index:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->tv_pay_success_count_index:Landroid/widget/TextView;

    .line 159
    sget p1, Lcom/alibaba/ailabs/genie/commonpay/R$id;->btn_pay_cancel:I

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 160
    sget v0, Lcom/alibaba/ailabs/genie/commonpay/R$id;->btn_pay_error_back:I

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 161
    new-instance v2, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity$1;-><init>(Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    new-instance p1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity$2;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity$2;-><init>(Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    sget-object p1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate is called ----------44"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/commonpay/utils/Utils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mDeviceId:Ljava/lang/String;

    .line 190
    sget-object p1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->TAG:Ljava/lang/String;

    const-string v0, "onCreate is called ----------55"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->processData()V

    .line 197
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 198
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 199
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->isPaySuccess:Z

    const-string v2, "isPaySuccess"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 200
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->paySuccessData:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    :goto_0
    const-string v2, "paySuccessData"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    iget v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->payErrorCode:I

    const-string v2, "payErrorCode"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 202
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->payErrorMsg:Ljava/lang/String;

    const-string v2, "payErrorMsg"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    invoke-virtual {p0, v1, p1}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->setResult(ILandroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public onCreateOrderFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 607
    sget-object v0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get Qrcode error; retCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; retMsg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    sget-object v0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CreateOrderFailure; get Qrcode error; retCode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pay_failed.mp3"

    .line 612
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->playStatus(Ljava/lang/String;)V

    .line 615
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mQrcode_pay_layout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 616
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mQrcode_pay_error_layout:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 617
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->img_pay_error_bg:Landroid/widget/ImageView;

    sget v4, Lcom/alibaba/ailabs/genie/commonpay/R$mipmap;->pay_qrcode_error_bg:I

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 619
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->tv_pay_error_info:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 622
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "20017"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->tv_pay_error_info_tips:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 624
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->tv_pay_error_info:Landroid/widget/TextView;

    const-string v4, "\u8bf7\u5148\u628a\u672a\u652f\u4ed8\u8ba2\u5355\u5b8c\u6210\u652f\u4ed8\uff0c\u518d\u6765\u4e0b\u5355\u54e6"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->tv_pay_error_info:Landroid/widget/TextView;

    sget v4, Lcom/alibaba/ailabs/genie/commonpay/R$string;->tv_not_get_payinfo:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 627
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->tv_pay_error_info_tips:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 628
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->tv_pay_error_info_tips:Landroid/widget/TextView;

    sget v4, Lcom/alibaba/ailabs/genie/commonpay/R$string;->tv_not_get_payinfo_tips:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 631
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mPay_error_mount_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 632
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mGood_detail_name_error_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 633
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mSeller_name_error_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 635
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mQrcode_pay_success_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 637
    iput-boolean v3, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->isPaySuccess:Z

    const/4 v0, -0x2

    .line 638
    iput v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->payErrorCode:I

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createOrderFailure,retcode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->payErrorMsg:Ljava/lang/String;

    .line 642
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 643
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 644
    iget-boolean p2, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->isPaySuccess:Z

    const-string v0, "isPaySuccess"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 645
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->paySuccessData:Lcom/alibaba/fastjson/JSONObject;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_1
    const-string p2, "null"

    :goto_1
    const-string v0, "paySuccessData"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 646
    iget p2, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->payErrorCode:I

    const-string v0, "payErrorCode"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 647
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->payErrorMsg:Ljava/lang/String;

    const-string v0, "payErrorMsg"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, -0x1

    .line 649
    invoke-virtual {p0, p2, p1}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->setResult(ILandroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public onCreateOrderSuccess(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 28

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v0, p3

    move-object/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    .line 506
    invoke-static/range {p10 .. p10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    const-string v13, "a2i1i.b43891792"

    const-string v14, "spm"

    const-string v15, "param"

    move-object/from16 v16, v13

    const-string v13, "type"

    move-object/from16 v17, v14

    const-string v14, "authInfo"

    move-object/from16 v18, v15

    const-string v15, "; outItemName="

    move-object/from16 v19, v13

    const-string v13, "; outItemId="

    move-object/from16 v20, v14

    const-string v14, "; orderId="

    const-string v11, "; amount="

    const-string v1, "; outOrderId="

    const-string v10, "; appId="

    if-nez v12, :cond_2

    .line 507
    sget-object v12, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v12

    const-string v12, "get Qrcode not null; sellerId="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, p9

    move-object/from16 v21, v10

    const/4 v10, 0x0

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "; payurl="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v24, v10

    move-object/from16 v12, v21

    move-object/from16 v10, p10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v10, v23

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    sget-object v9, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v21, v9

    const-string v9, "CreateOrderSuccess; get Qrcode not null; sellerId="

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v23, v1

    move-object/from16 v1, v24

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v24, v11

    move-object/from16 v11, p10

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v25, v1

    move-object/from16 v1, v21

    invoke-static {v1, v10}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p0

    move-object/from16 v10, v23

    .line 510
    iput-wide v2, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mSellerId:J

    .line 511
    iput-object v0, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mAppId:Ljava/lang/String;

    .line 512
    iput-object v4, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mOutOrderId:Ljava/lang/String;

    .line 513
    iput-wide v5, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mAmount:J

    move-object/from16 v21, v15

    .line 514
    invoke-static/range {p5 .. p6}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->changeF2Y(J)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mAmountYuan:Ljava/lang/String;

    .line 515
    iput-object v9, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mOutItemName:Ljava/lang/String;

    move-object/from16 v15, p11

    move-object/from16 v8, v24

    .line 516
    iput-object v15, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mMerchantName:Ljava/lang/String;

    move-object/from16 v23, v13

    .line 519
    iget-object v13, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mQrcode_pay_layout:Landroid/widget/LinearLayout;

    const/4 v7, 0x0

    invoke-virtual {v13, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 520
    iget-object v13, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mQrcode_pay_error_layout:Landroid/widget/FrameLayout;

    const/16 v7, 0x8

    invoke-virtual {v13, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 521
    iget-object v13, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mQrcode_pay_success_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v13, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 523
    iget-object v7, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->tv_pay_mount:Landroid/widget/TextView;

    iget-object v13, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mAmountYuan:Ljava/lang/String;

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    invoke-static/range {p9 .. p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 526
    iget-object v7, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mGood_detail_name_layout:Landroid/widget/LinearLayout;

    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 527
    iget-object v7, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->tv_good_detail_name:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v13, 0x8

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    .line 529
    iget-object v7, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mGood_detail_name_layout:Landroid/widget/LinearLayout;

    const/16 v13, 0x8

    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 532
    :goto_0
    invoke-static/range {p11 .. p11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 533
    iget-object v7, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mSeller_name_layout:Landroid/widget/LinearLayout;

    const/4 v13, 0x0

    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 534
    iget-object v7, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->tv_seller_name:Landroid/widget/TextView;

    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 536
    :cond_1
    iget-object v7, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mSeller_name_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v13}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 539
    :goto_1
    new-instance v7, Lcom/alibaba/ailabs/genie/commonpay/qrcode/BitmapWorkerTask;

    iget-object v13, v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->img_pay_qrcode:Landroid/widget/ImageView;

    invoke-direct {v7, v13}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/BitmapWorkerTask;-><init>(Landroid/view/View;)V

    const/4 v13, 0x2

    .line 540
    new-array v13, v13, [Ljava/lang/String;

    const-string v15, "1"

    const/16 v22, 0x0

    aput-object v15, v13, v22

    const/4 v15, 0x1

    aput-object v11, v13, v15

    invoke-virtual {v7, v13}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/BitmapWorkerTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 543
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->queryPayStatus()V

    .line 546
    :try_start_0
    new-instance v7, Ljava/util/HashMap;

    const/16 v13, 0xa

    invoke-direct {v7, v13}, Ljava/util/HashMap;-><init>(I)V

    .line 547
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v13

    invoke-virtual {v13}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfoStr()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v15, v20

    invoke-interface {v7, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "show qrcode success"

    move-object/from16 v15, v19

    .line 548
    invoke-interface {v7, v15, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "get qrcode not null; sellerId="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v8, p7

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p8

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v11, v18

    invoke-interface {v7, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v13, v16

    move-object/from16 v0, v17

    .line 550
    invoke-interface {v7, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "common_qrcode_pay_show_qrcode_success"

    const-string v2, "common_qrcode_pay_qrcode_page"

    .line 551
    invoke-static {v0, v2, v7}, Lcom/alibaba/ailabs/genie/commonpay/utils/UTNotify;->onCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 553
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    move-object v9, v1

    goto/16 :goto_4

    :cond_2
    move-object/from16 v9, p9

    move-object v12, v10

    move-object v10, v1

    move-object/from16 v26, v8

    move-object v8, v7

    move-object/from16 v7, v26

    move-object/from16 v27, v15

    move-object v15, v11

    move-object/from16 v11, v27

    .line 556
    sget-object v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->TAG:Ljava/lang/String;

    move-object/from16 p10, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get Qrcode is null; sellerId="

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v9, p10

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    sget-object v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p10, v1

    const-string v1, "CreateOrderFailure; get Qrcode is null; sellerId="

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v1, p10

    invoke-static {v1, v9}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pay_failed.mp3"

    move-object/from16 v9, p0

    .line 559
    invoke-direct {v9, v1}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->playStatus(Ljava/lang/String;)V

    .line 561
    iget-object v1, v9, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mQrcode_pay_layout:Landroid/widget/LinearLayout;

    move-object/from16 v21, v11

    const/16 v11, 0x8

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 562
    iget-object v1, v9, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mQrcode_pay_error_layout:Landroid/widget/FrameLayout;

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 563
    iget-object v1, v9, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->img_pay_error_bg:Landroid/widget/ImageView;

    sget v11, Lcom/alibaba/ailabs/genie/commonpay/R$mipmap;->pay_qrcode_error_bg:I

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 564
    iget-object v1, v9, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->tv_pay_error_info:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 565
    iget-object v1, v9, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->tv_pay_error_info:Landroid/widget/TextView;

    sget v11, Lcom/alibaba/ailabs/genie/commonpay/R$string;->tv_not_get_payinfo:I

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(I)V

    .line 566
    iget-object v1, v9, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->tv_pay_error_info_tips:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 567
    iget-object v1, v9, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->tv_pay_error_info_tips:Landroid/widget/TextView;

    sget v11, Lcom/alibaba/ailabs/genie/commonpay/R$string;->tv_not_get_payinfo_tips:I

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(I)V

    .line 570
    iget-object v1, v9, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mPay_error_mount_layout:Landroid/widget/LinearLayout;

    const/16 v11, 0x8

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 572
    iget-object v1, v9, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mGood_detail_name_error_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 573
    iget-object v1, v9, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mSeller_name_error_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 575
    iget-object v1, v9, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mQrcode_pay_success_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    const/4 v1, 0x0

    .line 577
    iput-boolean v1, v9, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->isPaySuccess:Z

    const/4 v1, -0x2

    .line 578
    iput v1, v9, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->payErrorCode:I

    const-string v1, "onCreateOrderSuccess,but payurl is null "

    .line 579
    iput-object v1, v9, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->payErrorMsg:Ljava/lang/String;

    .line 582
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 583
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 584
    iget-boolean v11, v9, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->isPaySuccess:Z

    const-string v7, "isPaySuccess"

    invoke-virtual {v1, v7, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 585
    iget-object v7, v9, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->paySuccessData:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_3
    const-string v7, "null"

    :goto_3
    const-string v11, "paySuccessData"

    invoke-virtual {v1, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 586
    iget v7, v9, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->payErrorCode:I

    const-string v11, "payErrorCode"

    invoke-virtual {v1, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 587
    iget-object v7, v9, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->payErrorMsg:Ljava/lang/String;

    const-string v11, "payErrorMsg"

    invoke-virtual {v1, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v7, -0x1

    .line 589
    invoke-virtual {v9, v7, v1}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->setResult(ILandroid/content/Intent;)V

    .line 593
    :cond_4
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    const/16 v7, 0xa

    invoke-direct {v1, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 594
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfoStr()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v11, v20

    invoke-interface {v1, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "show qrcode failure"

    move-object/from16 v11, v19

    .line 595
    invoke-interface {v1, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "get qrcode is null; sellerId="

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p8

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p9

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v18

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v16

    move-object/from16 v2, v17

    .line 597
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "common_qrcode_pay_show_qrcode_failure"

    const-string v2, "common_qrcode_pay_qrcode_page"

    .line 598
    invoke-static {v0, v2, v1}, Lcom/alibaba/ailabs/genie/commonpay/utils/UTNotify;->onCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 600
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_4
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 369
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity;->onDestroy()V

    .line 372
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->fromAmpe:Z

    if-eqz v0, :cond_0

    .line 373
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    const-string v2, "payType"

    .line 374
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 375
    iget-boolean v1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->isPaySuccess:Z

    const-string v2, "isSuccess"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 376
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->paySuccessData:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "retdata"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget v1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->payErrorCode:I

    const-string v2, "retCode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 378
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->payErrorMsg:Ljava/lang/String;

    const-string v2, "retMsg"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    new-instance v1, Lcom/alibaba/ailabs/ipc/event/Event;

    const-string v2, "genieCommonPayResultMessage"

    invoke-direct {v1, v2, v0}, Lcom/alibaba/ailabs/ipc/event/Event;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 381
    invoke-static {p0}, Lcom/alibaba/ailabs/genie/router/message/MessageCenter;->getInstance(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/router/message/MessageCenter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/alibaba/ailabs/genie/router/message/MessageCenter;->publish(Lcom/alibaba/ailabs/ipc/event/Event;)V

    .line 382
    sget-object v1, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ampe apk call pay; calback, genieCommonPayResultMessage ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 395
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 396
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 400
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 403
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mBaseDialog:Lcom/alibaba/ailabs/genie/commonpay/dialog/BaseDialog;

    if-eqz v0, :cond_3

    .line 405
    :try_start_0
    invoke-virtual {v0}, Lcom/alibaba/ailabs/genie/commonpay/dialog/BaseDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .line 362
    sget-object v0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " onNewIntent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->setIntent(Landroid/content/Intent;)V

    .line 364
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->processData()V

    return-void
.end method

.method protected onPause()V
    .locals 3

    .line 356
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity;->onPause()V

    .line 357
    sget-object v0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " onPause"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onQueryOrderFailure(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 827
    sget-object v0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query order error; retCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; retMsg="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    sget-object v0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pay_failed.mp3"

    .line 831
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->playStatus(Ljava/lang/String;)V

    .line 833
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mQueryStatusTimeout:Z

    if-nez v0, :cond_0

    .line 835
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x7d1

    .line 836
    iput v1, v0, Landroid/os/Message;->what:I

    .line 838
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mBaseHandler:Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity$BaseHandler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v0, v4, v5}, Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity$BaseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    const/4 v0, 0x0

    .line 858
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->isPaySuccess:Z

    const/4 v0, -0x4

    .line 859
    iput v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->payErrorCode:I

    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "query order failed, retCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->payErrorMsg:Ljava/lang/String;

    .line 863
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 864
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 865
    iget-boolean p2, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->isPaySuccess:Z

    const-string v0, "isPaySuccess"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 866
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->paySuccessData:Lcom/alibaba/fastjson/JSONObject;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p2, "null"

    :goto_0
    const-string v0, "paySuccessData"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 867
    iget p2, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->payErrorCode:I

    const-string v0, "payErrorCode"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 868
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->payErrorMsg:Ljava/lang/String;

    const-string v0, "payErrorMsg"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p2, -0x1

    .line 870
    invoke-virtual {p0, p2, p1}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->setResult(ILandroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method public onQueryOrderSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 725
    sget-object v9, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "query order success; sellerId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "; appId="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "; outOrderId="

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "; orderId="

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ";orderStatus= "

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; outItemId="

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "; outItemName="

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v16, v6

    const-string v6, "; failMsg="

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    sget-object v9, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p6

    move-object/from16 v11, v16

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/alibaba/ailabs/genie/logger/sdk/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "authInfo"

    const-string v8, "paySuccessData"

    const-string v9, "isPaySuccess"

    const-string v11, "; orderStatus="

    const/4 v12, 0x0

    const/16 v13, 0x190

    if-ne v5, v13, :cond_2

    move-object/from16 v13, p0

    .line 730
    iget-object v15, v13, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->paySuccessData:Lcom/alibaba/fastjson/JSONObject;

    const-string v10, "sellerId"

    invoke-virtual {v15, v10, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    iget-object v0, v13, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->paySuccessData:Lcom/alibaba/fastjson/JSONObject;

    const-string v10, "appId"

    invoke-virtual {v0, v10, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    iget-object v0, v13, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->paySuccessData:Lcom/alibaba/fastjson/JSONObject;

    const-string v2, "outOrderId"

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    iget-object v0, v13, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->paySuccessData:Lcom/alibaba/fastjson/JSONObject;

    const-string v2, "orderId"

    invoke-virtual {v0, v2, v4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    iget-object v0, v13, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->paySuccessData:Lcom/alibaba/fastjson/JSONObject;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v10, "orderStatus"

    invoke-virtual {v0, v10, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    iget-object v0, v13, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->paySuccessData:Lcom/alibaba/fastjson/JSONObject;

    const-string v2, "outItemId"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    iget-object v0, v13, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->paySuccessData:Lcom/alibaba/fastjson/JSONObject;

    const-string v1, "outItemName"

    invoke-virtual {v0, v1, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 738
    iput-boolean v0, v13, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->isPaySuccess:Z

    .line 739
    iput v12, v13, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->payErrorCode:I

    .line 740
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "qrcode pay success, outOrderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->payErrorMsg:Ljava/lang/String;

    .line 743
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->paySuccess()V

    .line 746
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 747
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 748
    iget-boolean v1, v13, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->isPaySuccess:Z

    invoke-virtual {v0, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 749
    iget-object v1, v13, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->paySuccessData:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "null"

    :goto_0
    invoke-virtual {v0, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 750
    iget v1, v13, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->payErrorCode:I

    const-string v2, "payErrorCode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 751
    iget-object v1, v13, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->payErrorMsg:Ljava/lang/String;

    const-string v2, "payErrorMsg"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 753
    invoke-virtual {v13, v1, v0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->setResult(ILandroid/content/Intent;)V

    .line 757
    :cond_1
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 758
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfoStr()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "type"

    .line 759
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "qrcode pay success; orderStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "spm"

    const-string v2, "a2i1i.b43891792"

    .line 760
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "common_qrcode_pay_success"

    const-string v2, "common_qrcode_pay_qrcode_page"

    .line 761
    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/genie/commonpay/utils/UTNotify;->onCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    .line 763
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_2

    :cond_2
    move-object/from16 v13, p0

    const/16 v0, 0x1d6

    if-ne v5, v0, :cond_3

    .line 766
    iget-boolean v0, v13, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mQueryStatusTimeout:Z

    if-nez v0, :cond_6

    .line 768
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x7d1

    .line 769
    iput v1, v0, Landroid/os/Message;->what:I

    .line 771
    iget-object v1, v13, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mBaseHandler:Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity$BaseHandler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity$BaseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2

    .line 774
    :cond_3
    sget-object v0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->TAG:Ljava/lang/String;

    const-string v1, "pay failure"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "pay_failed.mp3"

    .line 775
    invoke-direct {v13, v0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->playStatus(Ljava/lang/String;)V

    .line 777
    iget-object v0, v13, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mBaseHandler:Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity$BaseHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity$BaseHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 780
    iget-object v0, v13, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mQrcode_pay_layout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 781
    iget-object v0, v13, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mQrcode_pay_error_layout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v12}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 782
    iget-object v0, v13, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->img_pay_error_bg:Landroid/widget/ImageView;

    sget v2, Lcom/alibaba/ailabs/genie/commonpay/R$mipmap;->pay_qrcode_timeout_bg:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 783
    iget-object v0, v13, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->tv_pay_error_info:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 784
    iget-object v0, v13, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->tv_pay_error_info:Landroid/widget/TextView;

    sget v2, Lcom/alibaba/ailabs/genie/commonpay/R$string;->tv_get_payinfo_failure:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 785
    iget-object v0, v13, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->tv_pay_error_info_tips:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 788
    iget-object v0, v13, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mPay_error_mount_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 789
    iget-object v0, v13, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->tv_pay_mount_error:Landroid/widget/TextView;

    iget-object v2, v13, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mAmountYuan:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 791
    iget-object v0, v13, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mGood_detail_name_error_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 792
    iget-object v0, v13, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->tv_good_detail_name_error:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 793
    iget-object v0, v13, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mSeller_name_error_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 796
    iput-boolean v12, v13, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->isPaySuccess:Z

    const/4 v0, -0x5

    .line 797
    iput v0, v13, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->payErrorCode:I

    .line 798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "queryOrderSuccess but pay failure, outOrderId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->payErrorMsg:Ljava/lang/String;

    .line 801
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 802
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 803
    iget-boolean v1, v13, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->isPaySuccess:Z

    invoke-virtual {v0, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 804
    iget-object v1, v13, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->paySuccessData:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    const-string v1, "null"

    :goto_1
    invoke-virtual {v0, v8, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 805
    iget v1, v13, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->payErrorCode:I

    const-string v2, "payErrorCode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 806
    iget-object v1, v13, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->payErrorMsg:Ljava/lang/String;

    const-string v2, "payErrorMsg"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 808
    invoke-virtual {v13, v1, v0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->setResult(ILandroid/content/Intent;)V

    .line 813
    :cond_5
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 814
    invoke-static {}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getInstance()Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/ailabs/genie/second/genie/GenieSDK;->getAuthInfoStr()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "type"

    .line 815
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "qrcode pay success; orderStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "spm"

    const-string v2, "a2i1i.b43891792"

    .line 816
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "common_qrcode_pay_failure"

    const-string v2, "common_qrcode_pay_qrcode_page"

    .line 817
    invoke-static {v1, v2, v0}, Lcom/alibaba/ailabs/genie/commonpay/utils/UTNotify;->onCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 819
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_2
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 349
    invoke-super {p0}, Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity;->onResume()V

    .line 350
    sget-object v0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " onResume"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public processNLPResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;
    .locals 5

    .line 908
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ShoppingSearchActivity processNLPResult; commandDomain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; command="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; commandParams="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; nlpResult="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p4, "jesonma"

    invoke-static {p4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    new-instance p1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;

    invoke-direct {p1}, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;-><init>()V

    const-string p4, "/PayNotify"

    .line 912
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 913
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 915
    :try_start_0
    invoke-static {p3}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string p3, "sellerId"

    .line 917
    invoke-virtual {p2, p3}, Lcom/alibaba/fastjson/JSONObject;->getLongValue(Ljava/lang/String;)J

    move-result-wide p3

    const-string v0, "appId"

    .line 918
    invoke-virtual {p2, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "outOrderId"

    .line 919
    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "orderId"

    .line 920
    invoke-virtual {p2, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v2, "orderStatus"

    .line 922
    invoke-virtual {p2, v2}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v2

    const-string v3, "outItemName"

    .line 924
    invoke-virtual {p2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v3, "amount"

    .line 925
    invoke-virtual {p2, v3}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    .line 926
    iget-wide v3, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mSellerId:J

    cmp-long p2, v3, p3

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mAppId:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mAppId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mOutOrderId:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mOutOrderId:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/16 p2, 0x190

    if-ne v2, p2, :cond_0

    .line 928
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->paySuccess()V

    goto :goto_0

    :cond_0
    const/16 p2, 0x1c2

    if-ne v2, p2, :cond_1

    .line 930
    sget-object p2, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->TAG:Ljava/lang/String;

    const-string p3, "pay failure11"

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "pay_failed.mp3"

    .line 931
    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->playStatus(Ljava/lang/String;)V

    .line 933
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mBaseHandler:Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity$BaseHandler;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/alibaba/ailabs/genie/commonpay/mvp/BaseActivity$BaseHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 936
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mQrcode_pay_layout:Landroid/widget/LinearLayout;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 937
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mQrcode_pay_error_layout:Landroid/widget/FrameLayout;

    const/4 p4, 0x0

    invoke-virtual {p2, p4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 938
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->img_pay_error_bg:Landroid/widget/ImageView;

    sget v0, Lcom/alibaba/ailabs/genie/commonpay/R$mipmap;->pay_qrcode_timeout_bg:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 939
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->tv_pay_error_info:Landroid/widget/TextView;

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 940
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->tv_pay_error_info:Landroid/widget/TextView;

    sget v0, Lcom/alibaba/ailabs/genie/commonpay/R$string;->tv_get_payinfo_failure:I

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 941
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->tv_pay_error_info_tips:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 944
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mPay_error_mount_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 945
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->tv_pay_mount_error:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mAmountYuan:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 947
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mGood_detail_name_error_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 948
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->tv_good_detail_name_error:Landroid/widget/TextView;

    iget-object p4, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mOutItemName:Ljava/lang/String;

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 949
    iget-object p2, p0, Lcom/alibaba/ailabs/genie/commonpay/qrcode/QrcodePayActivity;->mSeller_name_error_layout:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 955
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 958
    iput-boolean p2, p1, Lcom/alibaba/ailabs/genie/assistant/sdk/asr/ASRCommandReturn;->mIsHandled:Z

    :cond_2
    return-object p1
.end method
