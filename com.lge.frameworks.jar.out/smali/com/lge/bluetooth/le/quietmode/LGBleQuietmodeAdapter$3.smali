.class Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter$3;
.super Landroid/os/Handler;
.source "LGBleQuietmodeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;


# direct methods
.method constructor <init>(Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter$3;->this$0:Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 223
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 230
    :goto_0
    return-void

    .line 225
    :pswitch_0
    # getter for: Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "case MESSAGE_QUIETMODE_STATE:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    # getter for: Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",  erroCode:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v0, p0, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter$3;->this$0:Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->updateBleQuietmodeCallback(II)V
    invoke-static {v0, v1, v2}, Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;->access$500(Lcom/lge/bluetooth/le/quietmode/LGBleQuietmodeAdapter;II)V

    goto :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method