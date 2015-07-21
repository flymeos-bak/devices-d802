.class Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoftApStartingState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 9365
    iput-object p1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    .line 9368
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->getCurrentMessage()Landroid/os/Message;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$29000(Lcom/android/server/wifi/WifiStateMachine;)Landroid/os/Message;

    move-result-object v1

    .line 9369
    .local v1, "message":Landroid/os/Message;
    iget v2, v1, Landroid/os/Message;->what:I

    const v3, 0x20015

    if-ne v2, v3, :cond_1

    .line 9370
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 9372
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_0

    .line 9373
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x2001b

    invoke-virtual {v2, v3}, Lcom/android/internal/util/AsyncChannel;->sendMessage(I)V

    .line 9381
    :goto_0
    return-void

    .line 9375
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mWifiApConfigChannel:Lcom/android/internal/util/AsyncChannel;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$4700(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/AsyncChannel;

    move-result-object v2

    const v3, 0x20019

    invoke-virtual {v2, v3, v0}, Lcom/android/internal/util/AsyncChannel;->sendMessage(ILjava/lang/Object;)V

    .line 9376
    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->startSoftApWithConfig(Landroid/net/wifi/WifiConfiguration;)V
    invoke-static {v2, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$29100(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 9379
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal transition to SoftApStartingState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 9384
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->logStateAndMessage(Landroid/os/Message;Ljava/lang/String;)V
    invoke-static {v1, p1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$1400(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;Ljava/lang/String;)V

    .line 9386
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 9419
    const/4 v1, 0x0

    .line 9421
    :goto_0
    return v1

    .line 9399
    :sswitch_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Lcom/android/server/wifi/WifiStateMachine;->access$29200(Lcom/android/server/wifi/WifiStateMachine;Landroid/os/Message;)V

    .line 9421
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 9402
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 9403
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-eqz v0, :cond_0

    .line 9404
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->startSoftApWithConfig(Landroid/net/wifi/WifiConfiguration;)V
    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiStateMachine;->access$29100(Lcom/android/server/wifi/WifiStateMachine;Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_1

    .line 9406
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const-string v2, "Softap config is null!"

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V

    .line 9407
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const v2, 0x20017

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->sendMessage(I)V

    goto :goto_1

    .line 9411
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_2
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/16 v2, 0xd

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setWifiApState(I)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$5300(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 9412
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mSoftApStartedState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$29300(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$29400(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 9415
    :sswitch_3
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    const/16 v2, 0xe

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->setWifiApState(I)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$5300(Lcom/android/server/wifi/WifiStateMachine;I)V

    .line 9416
    iget-object v1, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiStateMachine$SoftApStartingState;->this$0:Lcom/android/server/wifi/WifiStateMachine;

    # getter for: Lcom/android/server/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v2}, Lcom/android/server/wifi/WifiStateMachine;->access$6800(Lcom/android/server/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    # invokes: Lcom/android/server/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiStateMachine;->access$29500(Lcom/android/server/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 9386
    nop

    :sswitch_data_0
    .sparse-switch
        0x2000b -> :sswitch_0
        0x2000c -> :sswitch_0
        0x2000d -> :sswitch_0
        0x2000e -> :sswitch_0
        0x20015 -> :sswitch_0
        0x20016 -> :sswitch_2
        0x20017 -> :sswitch_3
        0x20018 -> :sswitch_0
        0x2001c -> :sswitch_1
        0x2001d -> :sswitch_0
        0x20048 -> :sswitch_0
        0x20050 -> :sswitch_0
        0x20054 -> :sswitch_0
        0x20055 -> :sswitch_0
        0x2005a -> :sswitch_0
    .end sparse-switch
.end method
