.class public Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;
.super Lcom/alipay/android/app/render/birdnest/service/BirdNestService;
.source "BirdNestSDKService.java"


# instance fields
.field private devicePropProvider:Lcom/alipay/birdnest/api/BirdNestEngine$DevicePropProvider;

.field private embedTemplateProvider:Lcom/alipay/birdnest/api/BirdNestEngine$EmbedTemplateProvider;

.field private emojiProvider:Lcom/alipay/birdnest/api/BirdNestEngine$EmojiProvider;

.field private engine:Lcom/alipay/birdnest/api/BirdNestEngine;

.field private idProvider:Lcom/alipay/birdnest/api/BirdNestEngine$IdProvider;

.field private mBatchLogTracer:Lcom/alipay/birdnest/api/BirdNestEngine$LogTracer;

.field private resourceProvider:Lcom/alipay/birdnest/api/BirdNestEngine$ResourceProvider;

.field private settingProvider:Lcom/alipay/birdnest/api/BirdNestEngine$SettingProvider;

.field private transport:Lcom/alipay/birdnest/api/BirdNestEngine$TemplateTransport;

.field private uiVideoProvider:Lcom/alipay/birdnest/api/BirdNestEngine$UiVideoProvider;

.field private uiWidgetProvider:Lcom/alipay/birdnest/api/BirdNestEngine$UiWidgetProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/alipay/android/app/render/birdnest/service/BirdNestService;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->transport:Lcom/alipay/birdnest/api/BirdNestEngine$TemplateTransport;

    .line 48
    iput-object v0, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->devicePropProvider:Lcom/alipay/birdnest/api/BirdNestEngine$DevicePropProvider;

    .line 49
    iput-object v0, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->embedTemplateProvider:Lcom/alipay/birdnest/api/BirdNestEngine$EmbedTemplateProvider;

    .line 50
    iput-object v0, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->resourceProvider:Lcom/alipay/birdnest/api/BirdNestEngine$ResourceProvider;

    .line 51
    iput-object v0, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->idProvider:Lcom/alipay/birdnest/api/BirdNestEngine$IdProvider;

    .line 52
    iput-object v0, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->settingProvider:Lcom/alipay/birdnest/api/BirdNestEngine$SettingProvider;

    .line 53
    iput-object v0, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->uiWidgetProvider:Lcom/alipay/birdnest/api/BirdNestEngine$UiWidgetProvider;

    .line 54
    iput-object v0, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->uiVideoProvider:Lcom/alipay/birdnest/api/BirdNestEngine$UiVideoProvider;

    .line 55
    iput-object v0, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->emojiProvider:Lcom/alipay/birdnest/api/BirdNestEngine$EmojiProvider;

    return-void
.end method

.method private createDevicePropProvider()Lcom/alipay/birdnest/api/BirdNestEngine$DevicePropProvider;
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->devicePropProvider:Lcom/alipay/birdnest/api/BirdNestEngine$DevicePropProvider;

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Lcom/alipay/android/app/render/birdnest/provider/CashierDevicePropProvider;

    iget-object v1, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->mProvider:Lcom/alipay/android/app/render/api/ICashierProvider;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/render/birdnest/provider/CashierDevicePropProvider;-><init>(Lcom/alipay/android/app/render/api/ICashierProvider;)V

    iput-object v0, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->devicePropProvider:Lcom/alipay/birdnest/api/BirdNestEngine$DevicePropProvider;

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->devicePropProvider:Lcom/alipay/birdnest/api/BirdNestEngine$DevicePropProvider;

    return-object v0
.end method

.method private createEmbedTemplateProvider()Lcom/alipay/birdnest/api/BirdNestEngine$EmbedTemplateProvider;
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->embedTemplateProvider:Lcom/alipay/birdnest/api/BirdNestEngine$EmbedTemplateProvider;

    if-nez v0, :cond_0

    .line 151
    new-instance v0, Lcom/alipay/android/app/render/birdnest/provider/CashierEmbedTemplateProvider;

    iget-object v1, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->mProvider:Lcom/alipay/android/app/render/api/ICashierProvider;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/render/birdnest/provider/CashierEmbedTemplateProvider;-><init>(Lcom/alipay/android/app/render/api/ICashierProvider;)V

    iput-object v0, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->embedTemplateProvider:Lcom/alipay/birdnest/api/BirdNestEngine$EmbedTemplateProvider;

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->embedTemplateProvider:Lcom/alipay/birdnest/api/BirdNestEngine$EmbedTemplateProvider;

    return-object v0
.end method

.method private createEmojiProvider()Lcom/alipay/birdnest/api/BirdNestEngine$EmojiProvider;
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->emojiProvider:Lcom/alipay/birdnest/api/BirdNestEngine$EmojiProvider;

    if-nez v0, :cond_0

    .line 193
    new-instance v0, Lcom/alipay/android/app/render/birdnest/provider/CashierEmojiProvider;

    iget-object v1, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->mProvider:Lcom/alipay/android/app/render/api/ICashierProvider;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/render/birdnest/provider/CashierEmojiProvider;-><init>(Lcom/alipay/android/app/render/api/ICashierProvider;)V

    iput-object v0, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->emojiProvider:Lcom/alipay/birdnest/api/BirdNestEngine$EmojiProvider;

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->emojiProvider:Lcom/alipay/birdnest/api/BirdNestEngine$EmojiProvider;

    return-object v0
.end method

.method private createIdProvider()Lcom/alipay/birdnest/api/BirdNestEngine$IdProvider;
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->idProvider:Lcom/alipay/birdnest/api/BirdNestEngine$IdProvider;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Lcom/alipay/android/app/render/birdnest/provider/CashierIdProvider;

    iget-object v1, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->mProvider:Lcom/alipay/android/app/render/api/ICashierProvider;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/render/birdnest/provider/CashierIdProvider;-><init>(Lcom/alipay/android/app/render/api/ICashierProvider;)V

    iput-object v0, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->idProvider:Lcom/alipay/birdnest/api/BirdNestEngine$IdProvider;

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->idProvider:Lcom/alipay/birdnest/api/BirdNestEngine$IdProvider;

    return-object v0
.end method

.method private createResourceProvider()Lcom/alipay/birdnest/api/BirdNestEngine$ResourceProvider;
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->resourceProvider:Lcom/alipay/birdnest/api/BirdNestEngine$ResourceProvider;

    if-nez v0, :cond_0

    .line 158
    new-instance v0, Lcom/alipay/android/app/render/birdnest/provider/CashierResourceProvider;

    iget-object v1, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->mProvider:Lcom/alipay/android/app/render/api/ICashierProvider;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/render/birdnest/provider/CashierResourceProvider;-><init>(Lcom/alipay/android/app/render/api/ICashierProvider;)V

    iput-object v0, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->resourceProvider:Lcom/alipay/birdnest/api/BirdNestEngine$ResourceProvider;

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->resourceProvider:Lcom/alipay/birdnest/api/BirdNestEngine$ResourceProvider;

    return-object v0
.end method

.method private createSettingProvider()Lcom/alipay/birdnest/api/BirdNestEngine$SettingProvider;
    .locals 2

    .line 171
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->settingProvider:Lcom/alipay/birdnest/api/BirdNestEngine$SettingProvider;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Lcom/alipay/android/app/render/birdnest/provider/CashierSettingProvider;

    iget-object v1, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->mProvider:Lcom/alipay/android/app/render/api/ICashierProvider;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/render/birdnest/provider/CashierSettingProvider;-><init>(Lcom/alipay/android/app/render/api/ICashierProvider;)V

    iput-object v0, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->settingProvider:Lcom/alipay/birdnest/api/BirdNestEngine$SettingProvider;

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->settingProvider:Lcom/alipay/birdnest/api/BirdNestEngine$SettingProvider;

    return-object v0
.end method

.method private createTransport()Lcom/alipay/birdnest/api/BirdNestEngine$TemplateTransport;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->transport:Lcom/alipay/birdnest/api/BirdNestEngine$TemplateTransport;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Lcom/alipay/android/app/render/birdnest/provider/CashierTemplateTransport;

    invoke-direct {v0}, Lcom/alipay/android/app/render/birdnest/provider/CashierTemplateTransport;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->transport:Lcom/alipay/birdnest/api/BirdNestEngine$TemplateTransport;

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->transport:Lcom/alipay/birdnest/api/BirdNestEngine$TemplateTransport;

    return-object v0
.end method

.method private createUiVideoProvider()Lcom/alipay/birdnest/api/BirdNestEngine$UiVideoProvider;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->uiVideoProvider:Lcom/alipay/birdnest/api/BirdNestEngine$UiVideoProvider;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lcom/alipay/android/app/render/birdnest/provider/CashierUiVideoProvider;

    invoke-direct {v0}, Lcom/alipay/android/app/render/birdnest/provider/CashierUiVideoProvider;-><init>()V

    iput-object v0, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->uiVideoProvider:Lcom/alipay/birdnest/api/BirdNestEngine$UiVideoProvider;

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->uiVideoProvider:Lcom/alipay/birdnest/api/BirdNestEngine$UiVideoProvider;

    return-object v0
.end method

.method private createUiWidgetProvider()Lcom/alipay/birdnest/api/BirdNestEngine$UiWidgetProvider;
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->uiWidgetProvider:Lcom/alipay/birdnest/api/BirdNestEngine$UiWidgetProvider;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Lcom/alipay/android/app/render/birdnest/provider/CashierUiWidgetProvider;

    iget-object v1, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->mProvider:Lcom/alipay/android/app/render/api/ICashierProvider;

    invoke-direct {v0, v1}, Lcom/alipay/android/app/render/birdnest/provider/CashierUiWidgetProvider;-><init>(Lcom/alipay/android/app/render/api/ICashierProvider;)V

    iput-object v0, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->uiWidgetProvider:Lcom/alipay/birdnest/api/BirdNestEngine$UiWidgetProvider;

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->uiWidgetProvider:Lcom/alipay/birdnest/api/BirdNestEngine$UiWidgetProvider;

    return-object v0
.end method

.method private getEventHandler(Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;)Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler;
    .locals 1

    .line 245
    new-instance v0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService$2;

    invoke-direct {v0, p0, p1}, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService$2;-><init>(Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;)V

    return-object v0
.end method


# virtual methods
.method public buildFBContext(Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;)Lcom/alipay/android/app/template/FBContext;
    .locals 4

    .line 199
    new-instance v0, Lcom/alipay/birdnest/api/BirdNestEngine$Params;

    invoke-direct {v0}, Lcom/alipay/birdnest/api/BirdNestEngine$Params;-><init>()V

    .line 201
    iget-object v1, p1, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->tplId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$Params;->tid:Ljava/lang/String;

    .line 202
    iget-object v1, p1, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->tplHtml:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$Params;->tplHtml:Ljava/lang/String;

    .line 203
    iget-object v1, p1, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->tplJson:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$Params;->tplJson:Ljava/lang/String;

    .line 204
    iget-object v1, p1, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->data:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$Params;->varJson:Ljava/lang/String;

    .line 205
    iget-object v1, p1, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->mCallbackProxy:Lcom/alipay/android/app/render/birdnest/RenderCallbackProxy;

    if-eqz v1, :cond_0

    .line 206
    new-instance v1, Lcom/alipay/android/app/render/birdnest/event/EventHandlerWrapper;

    invoke-direct {p0, p1}, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->getEventHandler(Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;)Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alipay/android/app/render/birdnest/event/EventHandlerWrapper;-><init>(Lcom/alipay/android/app/render/birdnest/event/TElementEventHandler;)V

    iput-object v1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$Params;->dtmEventListener:Lcom/alipay/android/app/template/EventHandler;

    .line 209
    :cond_0
    iget v1, p1, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->actionBarHeight:I

    iput v1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$Params;->actionBarHeight:I

    .line 210
    iget-object v1, p1, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->businessId:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$Params;->businessId:Ljava/lang/String;

    .line 211
    iget-object v1, p1, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->context:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    iput-object v1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$Params;->context:Landroid/app/Activity;

    const/4 v1, 0x0

    .line 212
    iput-object v1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$Params;->paramView:Landroid/view/View;

    const/4 v2, 0x0

    .line 213
    iput-boolean v2, v0, Lcom/alipay/birdnest/api/BirdNestEngine$Params;->reuse:Z

    .line 214
    iget-object v3, p1, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->factory:Lcom/alipay/android/app/template/FBPluginFactory;

    iput-object v3, v0, Lcom/alipay/birdnest/api/BirdNestEngine$Params;->factory:Lcom/alipay/android/app/template/FBPluginFactory;

    .line 215
    iput-object v1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$Params;->jsPluginFactory:Lcom/alipay/android/app/template/JsPluginFactory;

    .line 216
    iget-object v1, p1, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->callback:Lcom/alipay/android/app/template/OnLoadCallback;

    iput-object v1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$Params;->callback:Lcom/alipay/android/app/template/OnLoadCallback;

    .line 217
    iget-object v1, p1, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->mKeyboardService:Lcom/alipay/android/app/template/TemplateKeyboardService;

    iput-object v1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$Params;->keyboardService:Lcom/alipay/android/app/template/TemplateKeyboardService;

    .line 218
    iget-object v1, p1, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->mPasswordService:Lcom/alipay/android/app/template/TemplatePasswordService;

    iput-object v1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$Params;->passwordService:Lcom/alipay/android/app/template/TemplatePasswordService;

    .line 219
    iget-object v1, p1, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->bundleName:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$Params;->bundleName:Ljava/lang/String;

    .line 220
    iget-object v1, p1, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->appParams:Ljava/util/Map;

    iput-object v1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$Params;->appParams:Ljava/util/Map;

    .line 221
    iget-object v1, p1, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->eventTarget:Ljava/lang/Object;

    iput-object v1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$Params;->eventTarget:Ljava/lang/Object;

    .line 222
    iget-object v1, p1, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->eventBridge:Lcom/alipay/android/app/template/FBBridge;

    iput-object v1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$Params;->eventBridge:Lcom/alipay/android/app/template/FBBridge;

    .line 223
    iget-object v1, p1, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->resourceClient:Lcom/alipay/android/app/template/FBResourceClient;

    iput-object v1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$Params;->resourceClient:Lcom/alipay/android/app/template/FBResourceClient;

    .line 224
    iget-object v1, p1, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->contextResources:Landroid/content/res/Resources;

    iput-object v1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$Params;->contextResources:Landroid/content/res/Resources;

    .line 225
    iget-boolean p1, p1, Lcom/alipay/android/app/render/birdnest/BirdNestBuilder;->jsDebugger:Z

    iput-boolean p1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$Params;->jsDebugger:Z

    .line 226
    invoke-direct {p0}, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->createDevicePropProvider()Lcom/alipay/birdnest/api/BirdNestEngine$DevicePropProvider;

    move-result-object p1

    iput-object p1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$Params;->devicePropProvider:Lcom/alipay/birdnest/api/BirdNestEngine$DevicePropProvider;

    .line 228
    iget-object p1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$Params;->tplHtml:Ljava/lang/String;

    .line 230
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "{}"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 231
    :cond_1
    iget-object p1, v0, Lcom/alipay/birdnest/api/BirdNestEngine$Params;->tplJson:Ljava/lang/String;

    const/4 v2, 0x1

    .line 234
    :cond_2
    iget-object v1, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->engine:Lcom/alipay/birdnest/api/BirdNestEngine;

    invoke-virtual {v1, v0, p1, v2}, Lcom/alipay/birdnest/api/BirdNestEngine;->generateFBContext(Lcom/alipay/birdnest/api/BirdNestEngine$Params;Ljava/lang/String;I)Lcom/alipay/android/app/template/FBContext;

    move-result-object p1

    return-object p1
.end method

.method public createLogTracer()Lcom/alipay/birdnest/api/BirdNestEngine$LogTracer;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->mBatchLogTracer:Lcom/alipay/birdnest/api/BirdNestEngine$LogTracer;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService$1;

    invoke-direct {v0, p0}, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService$1;-><init>(Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;)V

    iput-object v0, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->mBatchLogTracer:Lcom/alipay/birdnest/api/BirdNestEngine$LogTracer;

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->mBatchLogTracer:Lcom/alipay/birdnest/api/BirdNestEngine$LogTracer;

    return-object v0
.end method

.method public getEngine()Lcom/alipay/birdnest/api/BirdNestEngine;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->engine:Lcom/alipay/birdnest/api/BirdNestEngine;

    return-object v0
.end method

.method public initialize(Lcom/alipay/android/app/render/api/ICashierProvider;)V
    .locals 13

    .line 63
    invoke-super {p0, p1}, Lcom/alipay/android/app/render/birdnest/service/BirdNestService;->initialize(Lcom/alipay/android/app/render/api/ICashierProvider;)V

    .line 65
    invoke-interface {p1}, Lcom/alipay/android/app/render/api/ICashierProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 66
    invoke-static {v2}, Lcom/alipay/birdnest/api/BirdNestEngine;->init(Landroid/content/Context;)V

    .line 69
    new-instance p1, Lcom/alipay/birdnest/api/BirdNestEngine$Config;

    .line 70
    invoke-direct {p0}, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->createTransport()Lcom/alipay/birdnest/api/BirdNestEngine$TemplateTransport;

    move-result-object v3

    .line 71
    invoke-direct {p0}, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->createEmbedTemplateProvider()Lcom/alipay/birdnest/api/BirdNestEngine$EmbedTemplateProvider;

    move-result-object v4

    .line 72
    invoke-direct {p0}, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->createResourceProvider()Lcom/alipay/birdnest/api/BirdNestEngine$ResourceProvider;

    move-result-object v5

    .line 73
    invoke-direct {p0}, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->createIdProvider()Lcom/alipay/birdnest/api/BirdNestEngine$IdProvider;

    move-result-object v6

    .line 74
    invoke-direct {p0}, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->createSettingProvider()Lcom/alipay/birdnest/api/BirdNestEngine$SettingProvider;

    move-result-object v7

    .line 75
    invoke-virtual {p0}, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->createLogTracer()Lcom/alipay/birdnest/api/BirdNestEngine$LogTracer;

    move-result-object v8

    .line 76
    invoke-direct {p0}, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->createUiWidgetProvider()Lcom/alipay/birdnest/api/BirdNestEngine$UiWidgetProvider;

    move-result-object v9

    .line 77
    invoke-direct {p0}, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->createUiVideoProvider()Lcom/alipay/birdnest/api/BirdNestEngine$UiVideoProvider;

    move-result-object v10

    .line 78
    invoke-direct {p0}, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->createDevicePropProvider()Lcom/alipay/birdnest/api/BirdNestEngine$DevicePropProvider;

    move-result-object v11

    .line 79
    invoke-direct {p0}, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->createEmojiProvider()Lcom/alipay/birdnest/api/BirdNestEngine$EmojiProvider;

    move-result-object v12

    const/4 v1, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v12}, Lcom/alipay/birdnest/api/BirdNestEngine$Config;-><init>(ZLandroid/content/Context;Lcom/alipay/birdnest/api/BirdNestEngine$TemplateTransport;Lcom/alipay/birdnest/api/BirdNestEngine$EmbedTemplateProvider;Lcom/alipay/birdnest/api/BirdNestEngine$ResourceProvider;Lcom/alipay/birdnest/api/BirdNestEngine$IdProvider;Lcom/alipay/birdnest/api/BirdNestEngine$SettingProvider;Lcom/alipay/birdnest/api/BirdNestEngine$LogTracer;Lcom/alipay/birdnest/api/BirdNestEngine$UiWidgetProvider;Lcom/alipay/birdnest/api/BirdNestEngine$UiVideoProvider;Lcom/alipay/birdnest/api/BirdNestEngine$DevicePropProvider;Lcom/alipay/birdnest/api/BirdNestEngine$EmojiProvider;)V

    .line 82
    :try_start_0
    invoke-static {p1}, Lcom/alipay/birdnest/api/BirdNestEngine;->create(Lcom/alipay/birdnest/api/BirdNestEngine$Config;)Lcom/alipay/birdnest/api/BirdNestEngine;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->engine:Lcom/alipay/birdnest/api/BirdNestEngine;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 84
    invoke-static {}, Lcom/alipay/android/app/render/log/LogTracer;->getInstance()Lcom/alipay/android/app/render/log/LogTracer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/android/app/render/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public onBackPressed(Landroid/view/View;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 122
    :cond_0
    iget-object v1, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->engine:Lcom/alipay/birdnest/api/BirdNestEngine;

    invoke-virtual {v1}, Lcom/alipay/birdnest/api/BirdNestEngine;->getTagId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 127
    :cond_1
    instance-of v2, v1, Lcom/alipay/android/app/template/ITemplateDisposable;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-eqz v2, :cond_4

    .line 128
    check-cast v1, Lcom/alipay/android/app/template/ITemplateDisposable;

    .line 129
    invoke-interface {v1, v0}, Lcom/alipay/android/app/template/ITemplateDisposable;->hiddenKeyboardService(Z)Z

    move-result v2

    if-nez v2, :cond_2

    .line 130
    invoke-interface {v1, p1, v4, v3}, Lcom/alipay/android/app/template/ITemplateDisposable;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0

    .line 131
    :cond_4
    instance-of v2, v1, Lcom/flybird/FBDocument;

    if-eqz v2, :cond_6

    .line 132
    check-cast v1, Lcom/flybird/FBDocument;

    .line 133
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 134
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 135
    invoke-virtual {v1, v2, v0}, Lcom/flybird/FBDocument;->hiddenKeyboardService(Landroid/view/View;Z)Z

    move-result v2

    if-nez v2, :cond_5

    .line 136
    invoke-virtual {v1}, Lcom/flybird/FBDocument;->getBodyView()Lcom/flybird/FBView;

    move-result-object v1

    invoke-virtual {v1, p1, v4, v3}, Lcom/flybird/FBView;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public releaseResource(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    if-lez p1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/service/impl/BirdNestSDKService;->engine:Lcom/alipay/birdnest/api/BirdNestEngine;

    invoke-virtual {v0, p1}, Lcom/alipay/birdnest/api/BirdNestEngine;->clearCachedElement(I)V

    .line 113
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method
